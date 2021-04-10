// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemSuggestion _$ItemSuggestionFromJson(Map<String, dynamic> json) {
  return _ItemSuggestion.fromJson(json);
}

/// @nodoc
class _$ItemSuggestionTearOff {
  const _$ItemSuggestionTearOff();

  _ItemSuggestion call(String code, String name) {
    return _ItemSuggestion(
      code,
      name,
    );
  }

  ItemSuggestion fromJson(Map<String, Object> json) {
    return ItemSuggestion.fromJson(json);
  }
}

/// @nodoc
const $ItemSuggestion = _$ItemSuggestionTearOff();

/// @nodoc
mixin _$ItemSuggestion {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemSuggestionCopyWith<ItemSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemSuggestionCopyWith<$Res> {
  factory $ItemSuggestionCopyWith(
          ItemSuggestion value, $Res Function(ItemSuggestion) then) =
      _$ItemSuggestionCopyWithImpl<$Res>;
  $Res call({String code, String name});
}

/// @nodoc
class _$ItemSuggestionCopyWithImpl<$Res>
    implements $ItemSuggestionCopyWith<$Res> {
  _$ItemSuggestionCopyWithImpl(this._value, this._then);

  final ItemSuggestion _value;
  // ignore: unused_field
  final $Res Function(ItemSuggestion) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemSuggestionCopyWith<$Res>
    implements $ItemSuggestionCopyWith<$Res> {
  factory _$ItemSuggestionCopyWith(
          _ItemSuggestion value, $Res Function(_ItemSuggestion) then) =
      __$ItemSuggestionCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name});
}

/// @nodoc
class __$ItemSuggestionCopyWithImpl<$Res>
    extends _$ItemSuggestionCopyWithImpl<$Res>
    implements _$ItemSuggestionCopyWith<$Res> {
  __$ItemSuggestionCopyWithImpl(
      _ItemSuggestion _value, $Res Function(_ItemSuggestion) _then)
      : super(_value, (v) => _then(v as _ItemSuggestion));

  @override
  _ItemSuggestion get _value => super._value as _ItemSuggestion;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_ItemSuggestion(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemSuggestion
    with DiagnosticableTreeMixin
    implements _ItemSuggestion {
  const _$_ItemSuggestion(this.code, this.name);

  factory _$_ItemSuggestion.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemSuggestionFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemSuggestion(code: $code, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemSuggestion'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemSuggestion &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ItemSuggestionCopyWith<_ItemSuggestion> get copyWith =>
      __$ItemSuggestionCopyWithImpl<_ItemSuggestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemSuggestionToJson(this);
  }
}

abstract class _ItemSuggestion implements ItemSuggestion {
  const factory _ItemSuggestion(String code, String name) = _$_ItemSuggestion;

  factory _ItemSuggestion.fromJson(Map<String, dynamic> json) =
      _$_ItemSuggestion.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemSuggestionCopyWith<_ItemSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}
