// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'initial':
      return WeatherInitialState.fromJson(json);
    case 'loading':
      return WeatherLoadingState.fromJson(json);
    case 'error':
      return WeatherErrorState.fromJson(json);
    case 'loaded':
      return WeatherLoadedState.fromJson(json);

    default:
      throw FallThroughError();
  }
}

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

  WeatherState fromJson(Map<String, Object> json) {
    return WeatherState.fromJson(json);
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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

@JsonSerializable()

/// @nodoc
class _$WeatherInitialState implements WeatherInitialState {
  const _$WeatherInitialState();

  factory _$WeatherInitialState.fromJson(Map<String, dynamic> json) =>
      _$_$WeatherInitialStateFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeatherInitialStateToJson(this)..['runtimeType'] = 'initial';
  }
}

abstract class WeatherInitialState implements WeatherState {
  const factory WeatherInitialState() = _$WeatherInitialState;

  factory WeatherInitialState.fromJson(Map<String, dynamic> json) =
      _$WeatherInitialState.fromJson;
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

@JsonSerializable()

/// @nodoc
class _$WeatherLoadingState implements WeatherLoadingState {
  const _$WeatherLoadingState();

  factory _$WeatherLoadingState.fromJson(Map<String, dynamic> json) =>
      _$_$WeatherLoadingStateFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeatherLoadingStateToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class WeatherLoadingState implements WeatherState {
  const factory WeatherLoadingState() = _$WeatherLoadingState;

  factory WeatherLoadingState.fromJson(Map<String, dynamic> json) =
      _$WeatherLoadingState.fromJson;
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

@JsonSerializable()

/// @nodoc
class _$WeatherErrorState implements WeatherErrorState {
  const _$WeatherErrorState();

  factory _$WeatherErrorState.fromJson(Map<String, dynamic> json) =>
      _$_$WeatherErrorStateFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeatherErrorStateToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class WeatherErrorState implements WeatherState {
  const factory WeatherErrorState() = _$WeatherErrorState;

  factory WeatherErrorState.fromJson(Map<String, dynamic> json) =
      _$WeatherErrorState.fromJson;
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

@JsonSerializable()

/// @nodoc
class _$WeatherLoadedState implements WeatherLoadedState {
  const _$WeatherLoadedState(this.forecast);

  factory _$WeatherLoadedState.fromJson(Map<String, dynamic> json) =>
      _$_$WeatherLoadedStateFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeatherLoadedStateToJson(this)..['runtimeType'] = 'loaded';
  }
}

abstract class WeatherLoadedState implements WeatherState {
  const factory WeatherLoadedState(Forecast forecast) = _$WeatherLoadedState;

  factory WeatherLoadedState.fromJson(Map<String, dynamic> json) =
      _$WeatherLoadedState.fromJson;

  Forecast get forecast => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherLoadedStateCopyWith<WeatherLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
