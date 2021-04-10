// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _CityNameChanged cityNameChanged({required String cityName}) {
    return _CityNameChanged(
      cityName: cityName,
    );
  }

  _CityTapped cityTapped({required String cityName, required String cityId}) {
    return _CityTapped(
      cityName: cityName,
      cityId: cityId,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  String get cityName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) cityNameChanged,
    required TResult Function(String cityName, String cityId) cityTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? cityNameChanged,
    TResult Function(String cityName, String cityId)? cityTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityNameChanged value) cityNameChanged,
    required TResult Function(_CityTapped value) cityTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityNameChanged value)? cityNameChanged,
    TResult Function(_CityTapped value)? cityTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String cityName});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? cityName = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CityNameChangedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$CityNameChangedCopyWith(
          _CityNameChanged value, $Res Function(_CityNameChanged) then) =
      __$CityNameChangedCopyWithImpl<$Res>;
  @override
  $Res call({String cityName});
}

/// @nodoc
class __$CityNameChangedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$CityNameChangedCopyWith<$Res> {
  __$CityNameChangedCopyWithImpl(
      _CityNameChanged _value, $Res Function(_CityNameChanged) _then)
      : super(_value, (v) => _then(v as _CityNameChanged));

  @override
  _CityNameChanged get _value => super._value as _CityNameChanged;

  @override
  $Res call({
    Object? cityName = freezed,
  }) {
    return _then(_CityNameChanged(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_CityNameChanged implements _CityNameChanged {
  const _$_CityNameChanged({required this.cityName});

  @override
  final String cityName;

  @override
  String toString() {
    return 'SearchEvent.cityNameChanged(cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityNameChanged &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityName);

  @JsonKey(ignore: true)
  @override
  _$CityNameChangedCopyWith<_CityNameChanged> get copyWith =>
      __$CityNameChangedCopyWithImpl<_CityNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) cityNameChanged,
    required TResult Function(String cityName, String cityId) cityTapped,
  }) {
    return cityNameChanged(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? cityNameChanged,
    TResult Function(String cityName, String cityId)? cityTapped,
    required TResult orElse(),
  }) {
    if (cityNameChanged != null) {
      return cityNameChanged(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityNameChanged value) cityNameChanged,
    required TResult Function(_CityTapped value) cityTapped,
  }) {
    return cityNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityNameChanged value)? cityNameChanged,
    TResult Function(_CityTapped value)? cityTapped,
    required TResult orElse(),
  }) {
    if (cityNameChanged != null) {
      return cityNameChanged(this);
    }
    return orElse();
  }
}

abstract class _CityNameChanged implements SearchEvent {
  const factory _CityNameChanged({required String cityName}) =
      _$_CityNameChanged;

  @override
  String get cityName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityNameChangedCopyWith<_CityNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CityTappedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$CityTappedCopyWith(
          _CityTapped value, $Res Function(_CityTapped) then) =
      __$CityTappedCopyWithImpl<$Res>;
  @override
  $Res call({String cityName, String cityId});
}

/// @nodoc
class __$CityTappedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$CityTappedCopyWith<$Res> {
  __$CityTappedCopyWithImpl(
      _CityTapped _value, $Res Function(_CityTapped) _then)
      : super(_value, (v) => _then(v as _CityTapped));

  @override
  _CityTapped get _value => super._value as _CityTapped;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_CityTapped(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_CityTapped implements _CityTapped {
  const _$_CityTapped({required this.cityName, required this.cityId});

  @override
  final String cityName;
  @override
  final String cityId;

  @override
  String toString() {
    return 'SearchEvent.cityTapped(cityName: $cityName, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityTapped &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityName) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$CityTappedCopyWith<_CityTapped> get copyWith =>
      __$CityTappedCopyWithImpl<_CityTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityName) cityNameChanged,
    required TResult Function(String cityName, String cityId) cityTapped,
  }) {
    return cityTapped(cityName, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityName)? cityNameChanged,
    TResult Function(String cityName, String cityId)? cityTapped,
    required TResult orElse(),
  }) {
    if (cityTapped != null) {
      return cityTapped(cityName, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityNameChanged value) cityNameChanged,
    required TResult Function(_CityTapped value) cityTapped,
  }) {
    return cityTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityNameChanged value)? cityNameChanged,
    TResult Function(_CityTapped value)? cityTapped,
    required TResult orElse(),
  }) {
    if (cityTapped != null) {
      return cityTapped(this);
    }
    return orElse();
  }
}

abstract class _CityTapped implements SearchEvent {
  const factory _CityTapped(
      {required String cityName, required String cityId}) = _$_CityTapped;

  @override
  String get cityName => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityTappedCopyWith<_CityTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {required bool showErrorMessages,
      required bool loading,
      required List<ItemSuggestion> results}) {
    return _SearchState(
      showErrorMessages: showErrorMessages,
      loading: loading,
      results: results,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<ItemSuggestion> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages, bool loading, List<ItemSuggestion> results});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? loading = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ItemSuggestion>,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages, bool loading, List<ItemSuggestion> results});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? loading = freezed,
    Object? results = freezed,
  }) {
    return _then(_SearchState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ItemSuggestion>,
    ));
  }
}

/// @nodoc
class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.showErrorMessages,
      required this.loading,
      required this.results});

  @override
  final bool showErrorMessages;
  @override
  final bool loading;
  @override
  final List<ItemSuggestion> results;

  @override
  String toString() {
    return 'SearchState(showErrorMessages: $showErrorMessages, loading: $loading, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required bool showErrorMessages,
      required bool loading,
      required List<ItemSuggestion> results}) = _$_SearchState;

  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  List<ItemSuggestion> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
