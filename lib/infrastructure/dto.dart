import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanafi_inn/domain/country/country.dart';
import 'package:hanafi_inn/domain/holiday/holiday.dart';

part 'dto.g.dart';
part 'dto.freezed.dart';

@freezed
abstract class CountryDTO implements _$CountryDTO {
  const CountryDTO._();
  const factory CountryDTO({
    required String name,
    required String code,
  }) = _Country;

  factory CountryDTO.fromDomain(Country country) =>
      CountryDTO(name: country.name, code: country.code);
  Country toDomain() {
    return Country(name: name, code: code);
  }

  factory CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$CountryDTOFromJson(json);
}

@freezed
abstract class HolidayDTO implements _$HolidayDTO {
  const HolidayDTO._();
  const factory HolidayDTO({
    required String name,
    required String date,
  }) = _Holiday;

  factory HolidayDTO.fromDomain(Holiday holiday) =>
      HolidayDTO(name: holiday.name, date: holiday.date);

  Holiday toDomain() {
    return Holiday(name: name, date: date);
  }

  factory HolidayDTO.fromJson(Map<String, dynamic> json) =>
      _$HolidayDTOFromJson(json);
}
