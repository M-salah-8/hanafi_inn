part of 'holiday_list_bloc.dart';

@freezed
class HolidayListEvent with _$HolidayListEvent {
  const factory HolidayListEvent.getList(String countryCode) = _getList;
}
