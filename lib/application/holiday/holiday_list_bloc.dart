import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanafi_inn/domain/country/i_country_repository.dart';
import 'package:hanafi_inn/domain/holiday/holiday.dart';

part 'holiday_list_bloc.freezed.dart';
part 'holiday_list_event.dart';
part 'holiday_list_state.dart';

class HolidayListBloc extends Bloc<HolidayListEvent, HolidayListState> {
  final ICountryRepository _countryRepository;
  HolidayListBloc(this._countryRepository)
      : super(const HolidayListState.initial()) {
    on<HolidayListEvent>((event, emit) async {
      emit(const HolidayListState.loading());
      final holidaysListorFailure =
          await _countryRepository.getHolidays(event.countryCode);
      holidaysListorFailure.fold(
          (l) =>
              // TODO failures
              HolidayListState.loadFailure(),
          (r) => HolidayListState.loadSuccess(r));
    });
  }
}
