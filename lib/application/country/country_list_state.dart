part of 'country_list_bloc.dart';

@freezed
class CountryListState with _$CountryListState {
  const factory CountryListState.initial() = _Initial;
  const factory CountryListState.loading() = _Loading;
  const factory CountryListState.loadSuccess(
          List<CountryPrimitive> countries, CountryPrimitive currentCountry) =
      _LoadSuccess;
  const factory CountryListState.loadFailure(String failure) = _LoadFailure;
}
