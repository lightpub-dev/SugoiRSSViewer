// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rss_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RSSChannel _$RSSChannelFromJson(Map<String, dynamic> json) {
  return _RSSChannel.fromJson(json);
}

/// @nodoc
mixin _$RSSChannel {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this RSSChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RSSChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RSSChannelCopyWith<RSSChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RSSChannelCopyWith<$Res> {
  factory $RSSChannelCopyWith(
          RSSChannel value, $Res Function(RSSChannel) then) =
      _$RSSChannelCopyWithImpl<$Res, RSSChannel>;
  @useResult
  $Res call({String title, String link, String description});
}

/// @nodoc
class _$RSSChannelCopyWithImpl<$Res, $Val extends RSSChannel>
    implements $RSSChannelCopyWith<$Res> {
  _$RSSChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RSSChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RSSChannelImplCopyWith<$Res>
    implements $RSSChannelCopyWith<$Res> {
  factory _$$RSSChannelImplCopyWith(
          _$RSSChannelImpl value, $Res Function(_$RSSChannelImpl) then) =
      __$$RSSChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String link, String description});
}

/// @nodoc
class __$$RSSChannelImplCopyWithImpl<$Res>
    extends _$RSSChannelCopyWithImpl<$Res, _$RSSChannelImpl>
    implements _$$RSSChannelImplCopyWith<$Res> {
  __$$RSSChannelImplCopyWithImpl(
      _$RSSChannelImpl _value, $Res Function(_$RSSChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RSSChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? description = null,
  }) {
    return _then(_$RSSChannelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RSSChannelImpl with DiagnosticableTreeMixin implements _RSSChannel {
  const _$RSSChannelImpl(
      {required this.title, required this.link, required this.description});

  factory _$RSSChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RSSChannelImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RSSChannel(title: $title, link: $link, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RSSChannel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RSSChannelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, description);

  /// Create a copy of RSSChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RSSChannelImplCopyWith<_$RSSChannelImpl> get copyWith =>
      __$$RSSChannelImplCopyWithImpl<_$RSSChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RSSChannelImplToJson(
      this,
    );
  }
}

abstract class _RSSChannel implements RSSChannel {
  const factory _RSSChannel(
      {required final String title,
      required final String link,
      required final String description}) = _$RSSChannelImpl;

  factory _RSSChannel.fromJson(Map<String, dynamic> json) =
      _$RSSChannelImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get description;

  /// Create a copy of RSSChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RSSChannelImplCopyWith<_$RSSChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RSSItem _$RSSItemFromJson(Map<String, dynamic> json) {
  return _RSSItem.fromJson(json);
}

/// @nodoc
mixin _$RSSItem {
  RSSChannel get channel => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get pubDate => throw _privateConstructorUsedError;

  /// Serializes this RSSItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RSSItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RSSItemCopyWith<RSSItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RSSItemCopyWith<$Res> {
  factory $RSSItemCopyWith(RSSItem value, $Res Function(RSSItem) then) =
      _$RSSItemCopyWithImpl<$Res, RSSItem>;
  @useResult
  $Res call(
      {RSSChannel channel,
      String? title,
      String? link,
      String? description,
      DateTime? pubDate});

  $RSSChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$RSSItemCopyWithImpl<$Res, $Val extends RSSItem>
    implements $RSSItemCopyWith<$Res> {
  _$RSSItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RSSItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? title = freezed,
    Object? link = freezed,
    Object? description = freezed,
    Object? pubDate = freezed,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as RSSChannel,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of RSSItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RSSChannelCopyWith<$Res> get channel {
    return $RSSChannelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RSSItemImplCopyWith<$Res> implements $RSSItemCopyWith<$Res> {
  factory _$$RSSItemImplCopyWith(
          _$RSSItemImpl value, $Res Function(_$RSSItemImpl) then) =
      __$$RSSItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RSSChannel channel,
      String? title,
      String? link,
      String? description,
      DateTime? pubDate});

  @override
  $RSSChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$$RSSItemImplCopyWithImpl<$Res>
    extends _$RSSItemCopyWithImpl<$Res, _$RSSItemImpl>
    implements _$$RSSItemImplCopyWith<$Res> {
  __$$RSSItemImplCopyWithImpl(
      _$RSSItemImpl _value, $Res Function(_$RSSItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RSSItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? title = freezed,
    Object? link = freezed,
    Object? description = freezed,
    Object? pubDate = freezed,
  }) {
    return _then(_$RSSItemImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as RSSChannel,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RSSItemImpl with DiagnosticableTreeMixin implements _RSSItem {
  const _$RSSItemImpl(
      {required this.channel,
      required this.title,
      required this.link,
      required this.description,
      required this.pubDate});

  factory _$RSSItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RSSItemImplFromJson(json);

  @override
  final RSSChannel channel;
  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? description;
  @override
  final DateTime? pubDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RSSItem(channel: $channel, title: $title, link: $link, description: $description, pubDate: $pubDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RSSItem'))
      ..add(DiagnosticsProperty('channel', channel))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pubDate', pubDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RSSItemImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channel, title, link, description, pubDate);

  /// Create a copy of RSSItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RSSItemImplCopyWith<_$RSSItemImpl> get copyWith =>
      __$$RSSItemImplCopyWithImpl<_$RSSItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RSSItemImplToJson(
      this,
    );
  }
}

abstract class _RSSItem implements RSSItem {
  const factory _RSSItem(
      {required final RSSChannel channel,
      required final String? title,
      required final String? link,
      required final String? description,
      required final DateTime? pubDate}) = _$RSSItemImpl;

  factory _RSSItem.fromJson(Map<String, dynamic> json) = _$RSSItemImpl.fromJson;

  @override
  RSSChannel get channel;
  @override
  String? get title;
  @override
  String? get link;
  @override
  String? get description;
  @override
  DateTime? get pubDate;

  /// Create a copy of RSSItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RSSItemImplCopyWith<_$RSSItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
