import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hanafi_inn/domain/country/country.dart';
import 'package:hanafi_inn/domain/country/i_country_repository.dart';
import 'package:hanafi_inn/domain/holiday/holiday.dart';
import 'package:hanafi_inn/infrastructure/dto.dart';
import 'package:http/http.dart';

class CountryRepository extends ICountryRepository {
  @override
  Future<Either<String, List<Country>>> getCountrysList() async {
    try {
      Response response = await get(Uri.parse(
          'https://holidayapi.com/v1/countries?pretty&key=3dc1dc83-6fde-4441-9e39-fdf91a5cc098'));
      Map data = jsonDecode(response.body);
      final List countryListAPI = data['countries'];
      final countryList = countryListAPI
          .map((e) => CountryDTO.fromJson(e as Map<String, dynamic>).toDomain())
          .toList();
      return right(countryList);
    } catch (e) {
      return left('erorr');
    }
  }

  @override
  Future<Either<String, List<Holiday>>> getHolidays(String countryCode) async {
    try {
      Response response = await get(Uri.parse(
          'https://holidayapi.com/v1/holidays?pretty&country=$countryCode&year=2021&key=3dc1dc83-6fde-4441-9e39-fdf91a5cc098'));
      Map data = jsonDecode(response.body);
      final List holidaysListAPI = data['holidays'];
      final holidaysList = holidaysListAPI
          .map((e) => HolidayDTO.fromJson(e as Map<String, dynamic>).toDomain())
          .toList();
      return right(holidaysList);
    } catch (e) {
      return left('erorr');
    }
  }
}
