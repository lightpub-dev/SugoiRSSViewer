// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RSSChannelImpl _$$RSSChannelImplFromJson(Map<String, dynamic> json) =>
    _$RSSChannelImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$RSSChannelImplToJson(_$RSSChannelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'description': instance.description,
    };

_$RSSItemImpl _$$RSSItemImplFromJson(Map<String, dynamic> json) =>
    _$RSSItemImpl(
      channel: RSSChannel.fromJson(json['channel'] as Map<String, dynamic>),
      title: json['title'] as String?,
      link: json['link'] as String?,
      description: json['description'] as String?,
      pubDate: json['pubDate'] == null
          ? null
          : DateTime.parse(json['pubDate'] as String),
    );

Map<String, dynamic> _$$RSSItemImplToJson(_$RSSItemImpl instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'title': instance.title,
      'link': instance.link,
      'description': instance.description,
      'pubDate': instance.pubDate?.toIso8601String(),
    };
