// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/country/country_list_bloc.dart' as _i5;
import 'application/holiday/holiday_list_bloc.dart' as _i6;
import 'domain/country/i_country_repository.dart' as _i3;
import 'infrastructure/country_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ICountryRepository>(() => _i4.CountryRepository());
  gh.factory<_i5.CountryListBloc>(
      () => _i5.CountryListBloc(get<_i3.ICountryRepository>()));
  gh.factory<_i6.HolidayListBloc>(
      () => _i6.HolidayListBloc(get<_i3.ICountryRepository>()));
  return get;
}
