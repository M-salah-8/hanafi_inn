part of 'holiday_list_bloc.dart';

@freezed
class HolidayListState with _$HolidayListState {
  const factory HolidayListState.initial() = _Initial;
  const factory HolidayListState.loading() = _Loading;
  const factory HolidayListState.loadSuccess(List<Holiday> holidays) =
      _LoadSuccess;
  const factory HolidayListState.loadFailure() = _LoadFailure;
}
