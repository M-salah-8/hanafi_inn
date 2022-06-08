// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
    required TResult Function(CountryPrimitive currentCountry)
        setCurrentCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(CountryPrimitive currentCountry)? setCurrentCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(CountryPrimitive currentCountry)? setCurrentCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getList value) getList,
    required TResult Function(_SetCurrentCountry value) setCurrentCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getList value)? getList,
    TResult Function(_SetCurrentCountry value)? setCurrentCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getList value)? getList,
    TResult Function(_SetCurrentCountry value)? setCurrentCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryListEventCopyWith<$Res> {
  factory $CountryListEventCopyWith(
          CountryListEvent value, $Res Function(CountryListEvent) then) =
      _$CountryListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryListEventCopyWithImpl<$Res>
    implements $CountryListEventCopyWith<$Res> {
  _$CountryListEventCopyWithImpl(this._value, this._then);

  final CountryListEvent _value;
  // ignore: unused_field
  final $Res Function(CountryListEvent) _then;
}

/// @nodoc
abstract class _$$_getListCopyWith<$Res> {
  factory _$$_getListCopyWith(
          _$_getList value, $Res Function(_$_getList) then) =
      __$$_getListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getListCopyWithImpl<$Res>
    extends _$CountryListEventCopyWithImpl<$Res>
    implements _$$_getListCopyWith<$Res> {
  __$$_getListCopyWithImpl(_$_getList _value, $Res Function(_$_getList) _then)
      : super(_value, (v) => _then(v as _$_getList));

  @override
  _$_getList get _value => super._value as _$_getList;
}

/// @nodoc

class _$_getList implements _getList {
  const _$_getList();

  @override
  String toString() {
    return 'CountryListEvent.getList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
    required TResult Function(CountryPrimitive currentCountry)
        setCurrentCountry,
  }) {
    return getList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(CountryPrimitive currentCountry)? setCurrentCountry,
  }) {
    return getList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(CountryPrimitive currentCountry)? setCurrentCountry,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getList value) getList,
    required TResult Function(_SetCurrentCountry value) setCurrentCountry,
  }) {
    return getList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getList value)? getList,
    TResult Function(_SetCurrentCountry value)? setCurrentCountry,
  }) {
    return getList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getList value)? getList,
    TResult Function(_SetCurrentCountry value)? setCurrentCountry,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(this);
    }
    return orElse();
  }
}

abstract class _getList implements CountryListEvent {
  const factory _getList() = _$_getList;
}

/// @nodoc
abstract class _$$_SetCurrentCountryCopyWith<$Res> {
  factory _$$_SetCurrentCountryCopyWith(_$_SetCurrentCountry value,
          $Res Function(_$_SetCurrentCountry) then) =
      __$$_SetCurrentCountryCopyWithImpl<$Res>;
  $Res call({CountryPrimitive currentCountry});

  $CountryPrimitiveCopyWith<$Res> get currentCountry;
}

/// @nodoc
class __$$_SetCurrentCountryCopyWithImpl<$Res>
    extends _$CountryListEventCopyWithImpl<$Res>
    implements _$$_SetCurrentCountryCopyWith<$Res> {
  __$$_SetCurrentCountryCopyWithImpl(
      _$_SetCurrentCountry _value, $Res Function(_$_SetCurrentCountry) _then)
      : super(_value, (v) => _then(v as _$_SetCurrentCountry));

  @override
  _$_SetCurrentCountry get _value => super._value as _$_SetCurrentCountry;

  @override
  $Res call({
    Object? currentCountry = freezed,
  }) {
    return _then(_$_SetCurrentCountry(
      currentCountry == freezed
          ? _value.currentCountry
          : currentCountry // ignore: cast_nullable_to_non_nullable
              as CountryPrimitive,
    ));
  }

  @override
  $CountryPrimitiveCopyWith<$Res> get currentCountry {
    return $CountryPrimitiveCopyWith<$Res>(_value.currentCountry, (value) {
      return _then(_value.copyWith(currentCountry: value));
    });
  }
}

/// @nodoc

class _$_SetCurrentCountry implements _SetCurrentCountry {
  const _$_SetCurrentCountry(this.currentCountry);

  @override
  final CountryPrimitive currentCountry;

  @override
  String toString() {
    return 'CountryListEvent.setCurrentCountry(currentCountry: $currentCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetCurrentCountry &&
            const DeepCollectionEquality()
                .equals(other.currentCountry, currentCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentCountry));

  @JsonKey(ignore: true)
  @override
  _$$_SetCurrentCountryCopyWith<_$_SetCurrentCountry> get copyWith =>
      __$$_SetCurrentCountryCopyWithImpl<_$_SetCurrentCountry>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
    required TResult Function(CountryPrimitive currentCountry)
        setCurrentCountry,
  }) {
    return setCurrentCountry(currentCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(CountryPrimitive currentCountry)? setCurrentCountry,
  }) {
    return setCurrentCountry?.call(currentCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(CountryPrimitive currentCountry)? setCurrentCountry,
    required TResult orElse(),
  }) {
    if (setCurrentCountry != null) {
      return setCurrentCountry(currentCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getList value) getList,
    required TResult Function(_SetCurrentCountry value) setCurrentCountry,
  }) {
    return setCurrentCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getList value)? getList,
    TResult Function(_SetCurrentCountry value)? setCurrentCountry,
  }) {
    return setCurrentCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getList value)? getList,
    TResult Function(_SetCurrentCountry value)? setCurrentCountry,
    required TResult orElse(),
  }) {
    if (setCurrentCountry != null) {
      return setCurrentCountry(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentCountry implements CountryListEvent {
  const factory _SetCurrentCountry(final CountryPrimitive currentCountry) =
      _$_SetCurrentCountry;

  CountryPrimitive get currentCountry => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetCurrentCountryCopyWith<_$_SetCurrentCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountryListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)
        loadSuccess,
    required TResult Function(String failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryListStateCopyWith<$Res> {
  factory $CountryListStateCopyWith(
          CountryListState value, $Res Function(CountryListState) then) =
      _$CountryListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryListStateCopyWithImpl<$Res>
    implements $CountryListStateCopyWith<$Res> {
  _$CountryListStateCopyWithImpl(this._value, this._then);

  final CountryListState _value;
  // ignore: unused_field
  final $Res Function(CountryListState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CountryListStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CountryListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)
        loadSuccess,
    required TResult Function(String failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CountryListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CountryListStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CountryListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)
        loadSuccess,
    required TResult Function(String failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CountryListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<CountryPrimitive> countries, CountryPrimitive currentCountry});

  $CountryPrimitiveCopyWith<$Res> get currentCountry;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$CountryListStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? countries = freezed,
    Object? currentCountry = freezed,
  }) {
    return _then(_$_LoadSuccess(
      countries == freezed
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryPrimitive>,
      currentCountry == freezed
          ? _value.currentCountry
          : currentCountry // ignore: cast_nullable_to_non_nullable
              as CountryPrimitive,
    ));
  }

  @override
  $CountryPrimitiveCopyWith<$Res> get currentCountry {
    return $CountryPrimitiveCopyWith<$Res>(_value.currentCountry, (value) {
      return _then(_value.copyWith(currentCountry: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(
      final List<CountryPrimitive> countries, this.currentCountry)
      : _countries = countries;

  final List<CountryPrimitive> _countries;
  @override
  List<CountryPrimitive> get countries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  final CountryPrimitive currentCountry;

  @override
  String toString() {
    return 'CountryListState.loadSuccess(countries: $countries, currentCountry: $currentCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality()
                .equals(other.currentCountry, currentCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(currentCountry));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)
        loadSuccess,
    required TResult Function(String failure) loadFailure,
  }) {
    return loadSuccess(countries, currentCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
  }) {
    return loadSuccess?.call(countries, currentCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(countries, currentCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CountryListState {
  const factory _LoadSuccess(final List<CountryPrimitive> countries,
      final CountryPrimitive currentCountry) = _$_LoadSuccess;

  List<CountryPrimitive> get countries => throw _privateConstructorUsedError;
  CountryPrimitive get currentCountry => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({String failure});
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$CountryListStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final String failure;

  @override
  String toString() {
    return 'CountryListState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)
        loadSuccess,
    required TResult Function(String failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CountryPrimitive> countries, CountryPrimitive currentCountry)?
        loadSuccess,
    TResult Function(String failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CountryListState {
  const factory _LoadFailure(final String failure) = _$_LoadFailure;

  String get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
