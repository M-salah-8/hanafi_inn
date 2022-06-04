import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanafi_inn/domain/country/country.dart';
import 'package:hanafi_inn/domain/country/i_country_repository.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'country_list_bloc.freezed.dart';
part 'country_list_event.dart';
part 'country_list_state.dart';

@injectable
class CountryListBloc extends Bloc<CountryListEvent, CountryListState> {
  final ICountryRepository _countryRepository;
  CountryListBloc(this._countryRepository)
      : super(const CountryListState.initial()) {
    on<CountryListEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final List<String>? countryListFromPrefs =
          prefs.getStringList('Country,Code');
      if (countryListFromPrefs != null) {
        final countryListConverted = prefToCountry(countryListFromPrefs);
        emit(CountryListState.loadSuccess(countryListConverted));
      } else {
        emit(const CountryListState.loading());
        final holidaysListorFailure =
            await _countryRepository.getCountrysList();
        holidaysListorFailure.fold(
            (l) =>
                // TODO failures
                emit(CountryListState.loadFailure()), (countryListAPI) async {
          countryToPref(countryListAPI, prefs);
          final countryList = countryListAPI
              .map((e) => CountryPrimitive.fromDomain(e))
              .toList();
          return emit(CountryListState.loadSuccess(countryList));
        });
      }
    });
  }

  /// convert country list from API to String list where every country get its code after it
  countryToPref(List<Country> countryList, SharedPreferences prefs) async {
    List<String> countryListToPrefs = [];
    for (int i = 0; i < countryList.length; i++) {
      countryListToPrefs = countryListToPrefs
        ..addAll([countryList[i].name, countryList[i].code]);
    }
    await prefs.setStringList('Country,Code', countryListToPrefs);
  }

  /// convert country String list from SharedPreferences to CountryPrimitive list
  List<CountryPrimitive> prefToCountry(List<String> countryListFromPrefs) {
    List<CountryPrimitive> prefsToCountryList = <CountryPrimitive>[];
    for (int i = 0; i < countryListFromPrefs.length; i += 2) {
      prefsToCountryList = prefsToCountryList
        ..add(CountryPrimitive(
            name: countryListFromPrefs[i], code: countryListFromPrefs[i + 1]));
    }
    return prefsToCountryList;
  }
}
