import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanafi_inn/domain/country/country.dart';
import 'package:hanafi_inn/domain/holiday/holiday.dart';

part 'presentation_classes.freezed.dart';

@freezed
abstract class CountryPrimitive implements _$CountryPrimitive {
  const CountryPrimitive._();
  const factory CountryPrimitive({
    required String name,
    required String code,
  }) = _CountryPrimitive;

  factory CountryPrimitive.fromDomain(Country country) =>
      CountryPrimitive(name: country.name, code: country.code);
  Country toDomain() {
    return Country(name: name, code: code);
  }
}

@freezed
abstract class HolidayPrimitive implements _$HolidayPrimitive {
  const HolidayPrimitive._();
  const factory HolidayPrimitive({
    required String name,
    required String date,
  }) = _HolidayPrimitive;

  factory HolidayPrimitive.fromDomain(Holiday holiday) =>
      HolidayPrimitive(name: holiday.name, date: holiday.date);

  Holiday toDomain() {
    return Holiday(name: name, date: date);
  }
}
