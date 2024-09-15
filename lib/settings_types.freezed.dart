// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RSSSettings _$RSSSettingsFromJson(Map<String, dynamic> json) {
  return _RSSSettings.fromJson(json);
}

/// @nodoc
mixin _$RSSSettings {
  List<RSSFeedEntry> get feeds => throw _privateConstructorUsedError;
  set feeds(List<RSSFeedEntry> value) => throw _privateConstructorUsedError;

  /// Serializes this RSSSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RSSSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RSSSettingsCopyWith<RSSSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RSSSettingsCopyWith<$Res> {
  factory $RSSSettingsCopyWith(
          RSSSettings value, $Res Function(RSSSettings) then) =
      _$RSSSettingsCopyWithImpl<$Res, RSSSettings>;
  @useResult
  $Res call({List<RSSFeedEntry> feeds});
}

/// @nodoc
class _$RSSSettingsCopyWithImpl<$Res, $Val extends RSSSettings>
    implements $RSSSettingsCopyWith<$Res> {
  _$RSSSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RSSSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeds = null,
  }) {
    return _then(_value.copyWith(
      feeds: null == feeds
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<RSSFeedEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RSSSettingsImplCopyWith<$Res>
    implements $RSSSettingsCopyWith<$Res> {
  factory _$$RSSSettingsImplCopyWith(
          _$RSSSettingsImpl value, $Res Function(_$RSSSettingsImpl) then) =
      __$$RSSSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RSSFeedEntry> feeds});
}

/// @nodoc
class __$$RSSSettingsImplCopyWithImpl<$Res>
    extends _$RSSSettingsCopyWithImpl<$Res, _$RSSSettingsImpl>
    implements _$$RSSSettingsImplCopyWith<$Res> {
  __$$RSSSettingsImplCopyWithImpl(
      _$RSSSettingsImpl _value, $Res Function(_$RSSSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RSSSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeds = null,
  }) {
    return _then(_$RSSSettingsImpl(
      feeds: null == feeds
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<RSSFeedEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RSSSettingsImpl with DiagnosticableTreeMixin implements _RSSSettings {
  _$RSSSettingsImpl({required this.feeds});

  factory _$RSSSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RSSSettingsImplFromJson(json);

  @override
  List<RSSFeedEntry> feeds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RSSSettings(feeds: $feeds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RSSSettings'))
      ..add(DiagnosticsProperty('feeds', feeds));
  }

  /// Create a copy of RSSSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RSSSettingsImplCopyWith<_$RSSSettingsImpl> get copyWith =>
      __$$RSSSettingsImplCopyWithImpl<_$RSSSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RSSSettingsImplToJson(
      this,
    );
  }
}

abstract class _RSSSettings implements RSSSettings {
  factory _RSSSettings({required List<RSSFeedEntry> feeds}) = _$RSSSettingsImpl;

  factory _RSSSettings.fromJson(Map<String, dynamic> json) =
      _$RSSSettingsImpl.fromJson;

  @override
  List<RSSFeedEntry> get feeds;
  set feeds(List<RSSFeedEntry> value);

  /// Create a copy of RSSSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RSSSettingsImplCopyWith<_$RSSSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RSSFeedEntry _$RSSFeedEntryFromJson(Map<String, dynamic> json) {
  return _RSSFeedEntry.fromJson(json);
}

/// @nodoc
mixin _$RSSFeedEntry {
  String get url => throw _privateConstructorUsedError;
  set url(String value) => throw _privateConstructorUsedError;

  /// Serializes this RSSFeedEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RSSFeedEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RSSFeedEntryCopyWith<RSSFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RSSFeedEntryCopyWith<$Res> {
  factory $RSSFeedEntryCopyWith(
          RSSFeedEntry value, $Res Function(RSSFeedEntry) then) =
      _$RSSFeedEntryCopyWithImpl<$Res, RSSFeedEntry>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$RSSFeedEntryCopyWithImpl<$Res, $Val extends RSSFeedEntry>
    implements $RSSFeedEntryCopyWith<$Res> {
  _$RSSFeedEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RSSFeedEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RSSFeedEntryImplCopyWith<$Res>
    implements $RSSFeedEntryCopyWith<$Res> {
  factory _$$RSSFeedEntryImplCopyWith(
          _$RSSFeedEntryImpl value, $Res Function(_$RSSFeedEntryImpl) then) =
      __$$RSSFeedEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$RSSFeedEntryImplCopyWithImpl<$Res>
    extends _$RSSFeedEntryCopyWithImpl<$Res, _$RSSFeedEntryImpl>
    implements _$$RSSFeedEntryImplCopyWith<$Res> {
  __$$RSSFeedEntryImplCopyWithImpl(
      _$RSSFeedEntryImpl _value, $Res Function(_$RSSFeedEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RSSFeedEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$RSSFeedEntryImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RSSFeedEntryImpl with DiagnosticableTreeMixin implements _RSSFeedEntry {
  _$RSSFeedEntryImpl({required this.url});

  factory _$RSSFeedEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RSSFeedEntryImplFromJson(json);

  @override
  String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RSSFeedEntry(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RSSFeedEntry'))
      ..add(DiagnosticsProperty('url', url));
  }

  /// Create a copy of RSSFeedEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RSSFeedEntryImplCopyWith<_$RSSFeedEntryImpl> get copyWith =>
      __$$RSSFeedEntryImplCopyWithImpl<_$RSSFeedEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RSSFeedEntryImplToJson(
      this,
    );
  }
}

abstract class _RSSFeedEntry implements RSSFeedEntry {
  factory _RSSFeedEntry({required String url}) = _$RSSFeedEntryImpl;

  factory _RSSFeedEntry.fromJson(Map<String, dynamic> json) =
      _$RSSFeedEntryImpl.fromJson;

  @override
  String get url;
  set url(String value);

  /// Create a copy of RSSFeedEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RSSFeedEntryImplCopyWith<_$RSSFeedEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
