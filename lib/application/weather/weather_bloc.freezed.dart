// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  WeatherInitialState initial() {
    return const WeatherInitialState();
  }

  WeatherLoadingState loading() {
    return const WeatherLoadingState();
  }

  WeatherErrorState error() {
    return const WeatherErrorState();
  }

  WeatherLoadedState loaded(Forecast forecast) {
    return WeatherLoadedState(
      forecast,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitialState value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherErrorState value) error,
    required TResult Function(WeatherLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitialState value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherErrorState value)? error,
    TResult Function(WeatherLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class $WeatherInitialStateCopyWith<$Res> {
  factory $WeatherInitialStateCopyWith(
          WeatherInitialState value, $Res Function(WeatherInitialState) then) =
      _$WeatherInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherInitialStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherInitialStateCopyWith<$Res> {
  _$WeatherInitialStateCopyWithImpl(
      WeatherInitialState _value, $Res Function(WeatherInitialState) _then)
      : super(_value, (v) => _then(v as WeatherInitialState));

  @override
  WeatherInitialState get _value => super._value as WeatherInitialState;
}

/// @nodoc
class _$WeatherInitialState implements WeatherInitialState {
  const _$WeatherInitialState();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeatherInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
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
    required TResult Function(WeatherInitialState value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherErrorState value) error,
    required TResult Function(WeatherLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitialState value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherErrorState value)? error,
    TResult Function(WeatherLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherInitialState implements WeatherState {
  const factory WeatherInitialState() = _$WeatherInitialState;
}

/// @nodoc
abstract class $WeatherLoadingStateCopyWith<$Res> {
  factory $WeatherLoadingStateCopyWith(
          WeatherLoadingState value, $Res Function(WeatherLoadingState) then) =
      _$WeatherLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherLoadingStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherLoadingStateCopyWith<$Res> {
  _$WeatherLoadingStateCopyWithImpl(
      WeatherLoadingState _value, $Res Function(WeatherLoadingState) _then)
      : super(_value, (v) => _then(v as WeatherLoadingState));

  @override
  WeatherLoadingState get _value => super._value as WeatherLoadingState;
}

/// @nodoc
class _$WeatherLoadingState implements WeatherLoadingState {
  const _$WeatherLoadingState();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeatherLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
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
    required TResult Function(WeatherInitialState value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherErrorState value) error,
    required TResult Function(WeatherLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitialState value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherErrorState value)? error,
    TResult Function(WeatherLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadingState implements WeatherState {
  const factory WeatherLoadingState() = _$WeatherLoadingState;
}

/// @nodoc
abstract class $WeatherErrorStateCopyWith<$Res> {
  factory $WeatherErrorStateCopyWith(
          WeatherErrorState value, $Res Function(WeatherErrorState) then) =
      _$WeatherErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherErrorStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherErrorStateCopyWith<$Res> {
  _$WeatherErrorStateCopyWithImpl(
      WeatherErrorState _value, $Res Function(WeatherErrorState) _then)
      : super(_value, (v) => _then(v as WeatherErrorState));

  @override
  WeatherErrorState get _value => super._value as WeatherErrorState;
}

/// @nodoc
class _$WeatherErrorState implements WeatherErrorState {
  const _$WeatherErrorState();

  @override
  String toString() {
    return 'WeatherState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeatherErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitialState value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherErrorState value) error,
    required TResult Function(WeatherLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitialState value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherErrorState value)? error,
    TResult Function(WeatherLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherErrorState implements WeatherState {
  const factory WeatherErrorState() = _$WeatherErrorState;
}

/// @nodoc
abstract class $WeatherLoadedStateCopyWith<$Res> {
  factory $WeatherLoadedStateCopyWith(
          WeatherLoadedState value, $Res Function(WeatherLoadedState) then) =
      _$WeatherLoadedStateCopyWithImpl<$Res>;
  $Res call({Forecast forecast});
}

/// @nodoc
class _$WeatherLoadedStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherLoadedStateCopyWith<$Res> {
  _$WeatherLoadedStateCopyWithImpl(
      WeatherLoadedState _value, $Res Function(WeatherLoadedState) _then)
      : super(_value, (v) => _then(v as WeatherLoadedState));

  @override
  WeatherLoadedState get _value => super._value as WeatherLoadedState;

  @override
  $Res call({
    Object? forecast = freezed,
  }) {
    return _then(WeatherLoadedState(
      forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ));
  }
}

/// @nodoc
class _$WeatherLoadedState implements WeatherLoadedState {
  const _$WeatherLoadedState(this.forecast);

  @override
  final Forecast forecast;

  @override
  String toString() {
    return 'WeatherState.loaded(forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherLoadedState &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forecast);

  @JsonKey(ignore: true)
  @override
  $WeatherLoadedStateCopyWith<WeatherLoadedState> get copyWith =>
      _$WeatherLoadedStateCopyWithImpl<WeatherLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return loaded(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitialState value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherErrorState value) error,
    required TResult Function(WeatherLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitialState value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherErrorState value)? error,
    TResult Function(WeatherLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadedState implements WeatherState {
  const factory WeatherLoadedState(Forecast forecast) = _$WeatherLoadedState;

  Forecast get forecast => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherLoadedStateCopyWith<WeatherLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  WeatherLoadCityEvent loadCity(ItemSuggestion suggestion) {
    return WeatherLoadCityEvent(
      suggestion,
    );
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  ItemSuggestion get suggestion => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemSuggestion suggestion) loadCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemSuggestion suggestion)? loadCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoadCityEvent value) loadCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoadCityEvent value)? loadCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
  $Res call({ItemSuggestion suggestion});

  $ItemSuggestionCopyWith<$Res> get suggestion;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;

  @override
  $Res call({
    Object? suggestion = freezed,
  }) {
    return _then(_value.copyWith(
      suggestion: suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as ItemSuggestion,
    ));
  }

  @override
  $ItemSuggestionCopyWith<$Res> get suggestion {
    return $ItemSuggestionCopyWith<$Res>(_value.suggestion, (value) {
      return _then(_value.copyWith(suggestion: value));
    });
  }
}

/// @nodoc
abstract class $WeatherLoadCityEventCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory $WeatherLoadCityEventCopyWith(WeatherLoadCityEvent value,
          $Res Function(WeatherLoadCityEvent) then) =
      _$WeatherLoadCityEventCopyWithImpl<$Res>;
  @override
  $Res call({ItemSuggestion suggestion});

  @override
  $ItemSuggestionCopyWith<$Res> get suggestion;
}

/// @nodoc
class _$WeatherLoadCityEventCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $WeatherLoadCityEventCopyWith<$Res> {
  _$WeatherLoadCityEventCopyWithImpl(
      WeatherLoadCityEvent _value, $Res Function(WeatherLoadCityEvent) _then)
      : super(_value, (v) => _then(v as WeatherLoadCityEvent));

  @override
  WeatherLoadCityEvent get _value => super._value as WeatherLoadCityEvent;

  @override
  $Res call({
    Object? suggestion = freezed,
  }) {
    return _then(WeatherLoadCityEvent(
      suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as ItemSuggestion,
    ));
  }
}

/// @nodoc
class _$WeatherLoadCityEvent implements WeatherLoadCityEvent {
  const _$WeatherLoadCityEvent(this.suggestion);

  @override
  final ItemSuggestion suggestion;

  @override
  String toString() {
    return 'WeatherEvent.loadCity(suggestion: $suggestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherLoadCityEvent &&
            (identical(other.suggestion, suggestion) ||
                const DeepCollectionEquality()
                    .equals(other.suggestion, suggestion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(suggestion);

  @JsonKey(ignore: true)
  @override
  $WeatherLoadCityEventCopyWith<WeatherLoadCityEvent> get copyWith =>
      _$WeatherLoadCityEventCopyWithImpl<WeatherLoadCityEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemSuggestion suggestion) loadCity,
  }) {
    return loadCity(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemSuggestion suggestion)? loadCity,
    required TResult orElse(),
  }) {
    if (loadCity != null) {
      return loadCity(suggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoadCityEvent value) loadCity,
  }) {
    return loadCity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoadCityEvent value)? loadCity,
    required TResult orElse(),
  }) {
    if (loadCity != null) {
      return loadCity(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadCityEvent implements WeatherEvent {
  const factory WeatherLoadCityEvent(ItemSuggestion suggestion) =
      _$WeatherLoadCityEvent;

  @override
  ItemSuggestion get suggestion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WeatherLoadCityEventCopyWith<WeatherLoadCityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
