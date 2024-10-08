// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'settings_types.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'settings_types.g.dart';

@unfreezed
class RSSSettings with _$RSSSettings {
  factory RSSSettings({
    required List<RSSFeedEntry> feeds,
    required int rssRetentionDays,
  }) = _RSSSettings;

  factory RSSSettings.fromJson(Map<String, Object?> json) =>
      _$RSSSettingsFromJson(json);
}

@unfreezed
class RSSFeedEntry with _$RSSFeedEntry {
  factory RSSFeedEntry({
    required String url,
  }) = _RSSFeedEntry;

  factory RSSFeedEntry.fromJson(Map<String, Object?> json) =>
      _$RSSFeedEntryFromJson(json);
}

RSSSettings makeDefaultRSSSettings() {
  return RSSSettings(rssRetentionDays: 7, feeds: []); // initial value
}
