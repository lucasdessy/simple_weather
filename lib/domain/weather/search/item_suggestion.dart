import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_suggestion.g.dart';
part 'item_suggestion.freezed.dart';

@freezed
class ItemSuggestion with _$ItemSuggestion {
  const factory ItemSuggestion(String code, String name) = _ItemSuggestion;

  factory ItemSuggestion.fromJson(Map<String, dynamic> json) =>
      _$ItemSuggestionFromJson(json);
}
