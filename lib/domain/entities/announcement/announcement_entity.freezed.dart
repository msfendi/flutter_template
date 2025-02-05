// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnouncementEntity _$AnnouncementEntityFromJson(Map<String, dynamic> json) {
  return _AnnouncementEntity.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementEntity {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementEntityCopyWith<AnnouncementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementEntityCopyWith<$Res> {
  factory $AnnouncementEntityCopyWith(
          AnnouncementEntity value, $Res Function(AnnouncementEntity) then) =
      _$AnnouncementEntityCopyWithImpl<$Res, AnnouncementEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$AnnouncementEntityCopyWithImpl<$Res, $Val extends AnnouncementEntity>
    implements $AnnouncementEntityCopyWith<$Res> {
  _$AnnouncementEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementEntityImplCopyWith<$Res>
    implements $AnnouncementEntityCopyWith<$Res> {
  factory _$$AnnouncementEntityImplCopyWith(_$AnnouncementEntityImpl value,
          $Res Function(_$AnnouncementEntityImpl) then) =
      __$$AnnouncementEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$AnnouncementEntityImplCopyWithImpl<$Res>
    extends _$AnnouncementEntityCopyWithImpl<$Res, _$AnnouncementEntityImpl>
    implements _$$AnnouncementEntityImplCopyWith<$Res> {
  __$$AnnouncementEntityImplCopyWithImpl(_$AnnouncementEntityImpl _value,
      $Res Function(_$AnnouncementEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AnnouncementEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementEntityImpl implements _AnnouncementEntity {
  const _$AnnouncementEntityImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'status') this.status});

  factory _$AnnouncementEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'AnnouncementEntity(id: $id, title: $title, type: $type, content: $content, createdAt: $createdAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, type, content, createdAt, status);

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementEntityImplCopyWith<_$AnnouncementEntityImpl> get copyWith =>
      __$$AnnouncementEntityImplCopyWithImpl<_$AnnouncementEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementEntityImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementEntity implements AnnouncementEntity {
  const factory _AnnouncementEntity(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'content') final String? content,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'status') final String? status}) =
      _$AnnouncementEntityImpl;

  factory _AnnouncementEntity.fromJson(Map<String, dynamic> json) =
      _$AnnouncementEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'status')
  String? get status;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementEntityImplCopyWith<_$AnnouncementEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
