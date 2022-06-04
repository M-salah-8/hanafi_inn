import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanafi_inn/domain/country/i_country_repository.dart';
import 'package:hanafi_inn/domain/holiday/holiday.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'holiday_list_bloc.freezed.dart';
part 'holiday_list_event.dart';
part 'holiday_list_state.dart';

@injectable
class HolidayListBloc extends Bloc<HolidayListEvent, HolidayListState> {
  final ICountryRepository _countryRepository;
  HolidayListBloc(this._countryRepository)
      : super(const HolidayListState.initial()) {
    on<HolidayListEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final List<String> codeListFromPrefs =
          prefs.getStringList('codelist') ?? [];
      if (!codeListFromPrefs.contains(event.countryCode)) {
        emit(const HolidayListState.loading());
        final holidaysListorFailure =
            await _countryRepository.getHolidays(event.countryCode);
        holidaysListorFailure.fold(
            (l) =>
                // TODO failures
                emit(HolidayListState.loadFailure()), (holidayListAPI) {
          holidayToPref(
              holidayListAPI, prefs, codeListFromPrefs, event.countryCode);
          final holidaysList = holidayListAPI
              .map((e) => HolidayPrimitive.fromDomain(e))
              .toList();
          emit(HolidayListState.loadSuccess(holidaysList));
        });
      } else {
        final holidayListConverted = prefsToHolidays(event.countryCode, prefs);
        emit(HolidayListState.loadSuccess(holidayListConverted));
        emit(const HolidayListState.initial());
      }
    });
  }

  /// convert holidays list from API to String list where every holiday get its date after it
  holidayToPref(List<Holiday> holidaysList, SharedPreferences prefs,
      List<String> codeListFromPrefs, String countryCode) async {
    // convert holiday list to string list
    List<String> holidaysListToPrefs = [];
    for (int i = 0; i < holidaysList.length; i++) {
      holidaysListToPrefs = holidaysListToPrefs
        ..addAll([holidaysList[i].name, holidaysList[i].date]);
    }
    // save country holidays as string list
    await prefs.setStringList(countryCode, holidaysListToPrefs);
    // update codes list
    await prefs.setStringList('codelist', codeListFromPrefs..add(countryCode));
  }

  /// convert holidays String list from SharedPreferences to HolidayPrimitive list
  List<HolidayPrimitive> prefsToHolidays(
      String countryCode, SharedPreferences prefs) {
    final List<String>? holidayListFromPrefs = prefs.getStringList(countryCode);
    // convert String list to primitive
    List<HolidayPrimitive> prefsToHolidayList = <HolidayPrimitive>[];
    for (int i = 0; i < holidayListFromPrefs!.length; i += 2) {
      prefsToHolidayList = prefsToHolidayList
        ..add(HolidayPrimitive(
            name: holidayListFromPrefs[i], date: holidayListFromPrefs[i + 1]));
    }
    return prefsToHolidayList;
  }
}

//*
//
//
//### code list[1,2,3,4,5]
//1 load list
//2 is code in list?
//a in list => 1 update list => move code to end
//             2 load list from pref
//             3 update list*
//b not in list=> countne code*
//                in holiday to pref
//                1 see if code has more than 5 elements if true:
//                      1 add code to list
//                2 delete first element in list

//                      3 delete first element from prefs
//                      4 add code holiday list to  pref
//                      5 update list*

//                  if false
//                      1 add code to list
//                      2 add code holiday list to  pref
//                      3 update list*
//                      2 *
///
