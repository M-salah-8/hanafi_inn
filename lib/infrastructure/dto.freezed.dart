// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDTO _$CountryDTOFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$CountryDTO {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOCopyWith<CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOCopyWith<$Res> {
  factory $CountryDTOCopyWith(
          CountryDTO value, $Res Function(CountryDTO) then) =
      _$CountryDTOCopyWithImpl<$Res>;
  $Res call({String name, String code});
}

/// @nodoc
class _$CountryDTOCopyWithImpl<$Res> implements $CountryDTOCopyWith<$Res> {
  _$CountryDTOCopyWithImpl(this._value, this._then);

  final CountryDTO _value;
  // ignore: unused_field
  final $Res Function(CountryDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryCopyWith<$Res> implements $CountryDTOCopyWith<$Res> {
  factory _$$_CountryCopyWith(
          _$_Country value, $Res Function(_$_Country) then) =
      __$$_CountryCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code});
}

/// @nodoc
class __$$_CountryCopyWithImpl<$Res> extends _$CountryDTOCopyWithImpl<$Res>
    implements _$$_CountryCopyWith<$Res> {
  __$$_CountryCopyWithImpl(_$_Country _value, $Res Function(_$_Country) _then)
      : super(_value, (v) => _then(v as _$_Country));

  @override
  _$_Country get _value => super._value as _$_Country;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_Country(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country extends _Country {
  const _$_Country({required this.name, required this.code}) : super._();

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'CountryDTO(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Country &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      __$$_CountryCopyWithImpl<_$_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country extends CountryDTO {
  const factory _Country(
      {required final String name, required final String code}) = _$_Country;
  const _Country._() : super._();

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      throw _privateConstructorUsedError;
}

HolidayDTO _$HolidayDTOFromJson(Map<String, dynamic> json) {
  return _Holiday.fromJson(json);
}

/// @nodoc
mixin _$HolidayDTO {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayDTOCopyWith<HolidayDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayDTOCopyWith<$Res> {
  factory $HolidayDTOCopyWith(
          HolidayDTO value, $Res Function(HolidayDTO) then) =
      _$HolidayDTOCopyWithImpl<$Res>;
  $Res call({String name, String date});
}

/// @nodoc
class _$HolidayDTOCopyWithImpl<$Res> implements $HolidayDTOCopyWith<$Res> {
  _$HolidayDTOCopyWithImpl(this._value, this._then);

  final HolidayDTO _value;
  // ignore: unused_field
  final $Res Function(HolidayDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HolidayCopyWith<$Res> implements $HolidayDTOCopyWith<$Res> {
  factory _$$_HolidayCopyWith(
          _$_Holiday value, $Res Function(_$_Holiday) then) =
      __$$_HolidayCopyWithImpl<$Res>;
  @override
  $Res call({String name, String date});
}

/// @nodoc
class __$$_HolidayCopyWithImpl<$Res> extends _$HolidayDTOCopyWithImpl<$Res>
    implements _$$_HolidayCopyWith<$Res> {
  __$$_HolidayCopyWithImpl(_$_Holiday _value, $Res Function(_$_Holiday) _then)
      : super(_value, (v) => _then(v as _$_Holiday));

  @override
  _$_Holiday get _value => super._value as _$_Holiday;

  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_Holiday(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Holiday extends _Holiday {
  const _$_Holiday({required this.name, required this.date}) : super._();

  factory _$_Holiday.fromJson(Map<String, dynamic> json) =>
      _$$_HolidayFromJson(json);

  @override
  final String name;
  @override
  final String date;

  @override
  String toString() {
    return 'HolidayDTO(name: $name, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Holiday &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_HolidayCopyWith<_$_Holiday> get copyWith =>
      __$$_HolidayCopyWithImpl<_$_Holiday>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolidayToJson(this);
  }
}

abstract class _Holiday extends HolidayDTO {
  const factory _Holiday(
      {required final String name, required final String date}) = _$_Holiday;
  const _Holiday._() : super._();

  factory _Holiday.fromJson(Map<String, dynamic> json) = _$_Holiday.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HolidayCopyWith<_$_Holiday> get copyWith =>
      throw _privateConstructorUsedError;
}
