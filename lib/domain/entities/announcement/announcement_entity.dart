import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_entity.freezed.dart';

part 'announcement_entity.g.dart';

@freezed
class AnnouncementEntity with _$AnnouncementEntity {
  const factory AnnouncementEntity({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'status') String? status,
  }) = _AnnouncementEntity;

  factory AnnouncementEntity.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementEntityFromJson(json);

}