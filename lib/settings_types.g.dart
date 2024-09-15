// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RSSSettingsImpl _$$RSSSettingsImplFromJson(Map<String, dynamic> json) =>
    _$RSSSettingsImpl(
      feeds: (json['feeds'] as List<dynamic>)
          .map((e) => RSSFeedEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RSSSettingsImplToJson(_$RSSSettingsImpl instance) =>
    <String, dynamic>{
      'feeds': instance.feeds,
    };

_$RSSFeedEntryImpl _$$RSSFeedEntryImplFromJson(Map<String, dynamic> json) =>
    _$RSSFeedEntryImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$RSSFeedEntryImplToJson(_$RSSFeedEntryImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
