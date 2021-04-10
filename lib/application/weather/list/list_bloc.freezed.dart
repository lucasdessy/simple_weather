// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListEventTearOff {
  const _$ListEventTearOff();

  _CityAdded cityAdded(ItemSuggestion itemSuggestion) {
    return _CityAdded(
      itemSuggestion,
    );
  }
}

/// @nodoc
const $ListEvent = _$ListEventTearOff();

/// @nodoc
mixin _$ListEvent {
  ItemSuggestion get itemSuggestion => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemSuggestion itemSuggestion) cityAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemSuggestion itemSuggestion)? cityAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityAdded value) cityAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityAdded value)? cityAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListEventCopyWith<ListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEventCopyWith<$Res> {
  factory $ListEventCopyWith(ListEvent value, $Res Function(ListEvent) then) =
      _$ListEventCopyWithImpl<$Res>;
  $Res call({ItemSuggestion itemSuggestion});

  $ItemSuggestionCopyWith<$Res> get itemSuggestion;
}

/// @nodoc
class _$ListEventCopyWithImpl<$Res> implements $ListEventCopyWith<$Res> {
  _$ListEventCopyWithImpl(this._value, this._then);

  final ListEvent _value;
  // ignore: unused_field
  final $Res Function(ListEvent) _then;

  @override
  $Res call({
    Object? itemSuggestion = freezed,
  }) {
    return _then(_value.copyWith(
      itemSuggestion: itemSuggestion == freezed
          ? _value.itemSuggestion
          : itemSuggestion // ignore: cast_nullable_to_non_nullable
              as ItemSuggestion,
    ));
  }

  @override
  $ItemSuggestionCopyWith<$Res> get itemSuggestion {
    return $ItemSuggestionCopyWith<$Res>(_value.itemSuggestion, (value) {
      return _then(_value.copyWith(itemSuggestion: value));
    });
  }
}

/// @nodoc
abstract class _$CityAddedCopyWith<$Res> implements $ListEventCopyWith<$Res> {
  factory _$CityAddedCopyWith(
          _CityAdded value, $Res Function(_CityAdded) then) =
      __$CityAddedCopyWithImpl<$Res>;
  @override
  $Res call({ItemSuggestion itemSuggestion});

  @override
  $ItemSuggestionCopyWith<$Res> get itemSuggestion;
}

/// @nodoc
class __$CityAddedCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements _$CityAddedCopyWith<$Res> {
  __$CityAddedCopyWithImpl(_CityAdded _value, $Res Function(_CityAdded) _then)
      : super(_value, (v) => _then(v as _CityAdded));

  @override
  _CityAdded get _value => super._value as _CityAdded;

  @override
  $Res call({
    Object? itemSuggestion = freezed,
  }) {
    return _then(_CityAdded(
      itemSuggestion == freezed
          ? _value.itemSuggestion
          : itemSuggestion // ignore: cast_nullable_to_non_nullable
              as ItemSuggestion,
    ));
  }
}

/// @nodoc
class _$_CityAdded implements _CityAdded {
  const _$_CityAdded(this.itemSuggestion);

  @override
  final ItemSuggestion itemSuggestion;

  @override
  String toString() {
    return 'ListEvent.cityAdded(itemSuggestion: $itemSuggestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityAdded &&
            (identical(other.itemSuggestion, itemSuggestion) ||
                const DeepCollectionEquality()
                    .equals(other.itemSuggestion, itemSuggestion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemSuggestion);

  @JsonKey(ignore: true)
  @override
  _$CityAddedCopyWith<_CityAdded> get copyWith =>
      __$CityAddedCopyWithImpl<_CityAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemSuggestion itemSuggestion) cityAdded,
  }) {
    return cityAdded(itemSuggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemSuggestion itemSuggestion)? cityAdded,
    required TResult orElse(),
  }) {
    if (cityAdded != null) {
      return cityAdded(itemSuggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CityAdded value) cityAdded,
  }) {
    return cityAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CityAdded value)? cityAdded,
    required TResult orElse(),
  }) {
    if (cityAdded != null) {
      return cityAdded(this);
    }
    return orElse();
  }
}

abstract class _CityAdded implements ListEvent {
  const factory _CityAdded(ItemSuggestion itemSuggestion) = _$_CityAdded;

  @override
  ItemSuggestion get itemSuggestion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityAddedCopyWith<_CityAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListStateTearOff {
  const _$ListStateTearOff();

  _ListState call({required List<ItemSuggestion> suggestions}) {
    return _ListState(
      suggestions: suggestions,
    );
  }
}

/// @nodoc
const $ListState = _$ListStateTearOff();

/// @nodoc
mixin _$ListState {
  List<ItemSuggestion> get suggestions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListStateCopyWith<ListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
  $Res call({List<ItemSuggestion> suggestions});
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;

  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_value.copyWith(
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<ItemSuggestion>,
    ));
  }
}

/// @nodoc
abstract class _$ListStateCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory _$ListStateCopyWith(
          _ListState value, $Res Function(_ListState) then) =
      __$ListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemSuggestion> suggestions});
}

/// @nodoc
class __$ListStateCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements _$ListStateCopyWith<$Res> {
  __$ListStateCopyWithImpl(_ListState _value, $Res Function(_ListState) _then)
      : super(_value, (v) => _then(v as _ListState));

  @override
  _ListState get _value => super._value as _ListState;

  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_ListState(
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<ItemSuggestion>,
    ));
  }
}

/// @nodoc
class _$_ListState implements _ListState {
  const _$_ListState({required this.suggestions});

  @override
  final List<ItemSuggestion> suggestions;

  @override
  String toString() {
    return 'ListState(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListState &&
            (identical(other.suggestions, suggestions) ||
                const DeepCollectionEquality()
                    .equals(other.suggestions, suggestions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(suggestions);

  @JsonKey(ignore: true)
  @override
  _$ListStateCopyWith<_ListState> get copyWith =>
      __$ListStateCopyWithImpl<_ListState>(this, _$identity);
}

abstract class _ListState implements ListState {
  const factory _ListState({required List<ItemSuggestion> suggestions}) =
      _$_ListState;

  @override
  List<ItemSuggestion> get suggestions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListStateCopyWith<_ListState> get copyWith =>
      throw _privateConstructorUsedError;
}
