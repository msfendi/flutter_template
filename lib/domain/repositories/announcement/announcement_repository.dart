
import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/networks/error_handler.dart';
import 'package:flutter_template/domain/entities/announcement/announcement_entity.dart';

abstract class AnnouncementRepository {
  Future<Either<Failure, List<AnnouncementEntity>>> getAnnouncements({Map<String, dynamic>? params});
}