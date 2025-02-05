
import 'package:flutter_template/core/networks/api_client.dart';
import 'package:flutter_template/infrastructure/datasource/base/api_datasource.dart';
import 'package:flutter_template/domain/entities/announcement/announcement_entity.dart';
import 'package:flutter_template/domain/entities/auth/auth_entity.dart';

extension APIExtension on ApiClient {
  /// AUTH ENTITY
  ApiDataSource<AuthEntity> get auth =>
      ApiDataSource<AuthEntity>(this, AuthEntity.fromJson);

  /// ANNOUNCEMENT ENTITY
  ApiDataSource<AnnouncementEntity> get announcement =>
      ApiDataSource<AnnouncementEntity>(this, AnnouncementEntity.fromJson);
}