import 'package:dartz/dartz.dart';
import 'package:hanafi_inn/domain/country/country.dart';
import 'package:hanafi_inn/domain/holiday/holiday.dart';

abstract class ICountryRepository {
  Future<Either<String, List<Country>>> getCountrysList();
  Future<Either<String, List<Holiday>>> getHolidays(String countryCode);
}
