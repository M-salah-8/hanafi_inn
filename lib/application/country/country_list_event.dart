part of 'country_list_bloc.dart';

@freezed
class CountryListEvent with _$CountryListEvent {
  const factory CountryListEvent.getList() = _getList;
}
