

import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/constant/endpoint.dart';
import 'package:flutter_template/core/networks/api_client.dart';
import 'package:flutter_template/core/networks/error_handler.dart';
import 'package:flutter_template/domain/entities/user/user_entity.dart';
import 'package:flutter_template/infrastructure/datasource/base/api_datasource_ext.dart';

class UserDataSource {
  final ApiClient apiClient;
  UserDataSource(this.apiClient);

  Future<Either<Failure, List<UserEntity>>> getUsers({Map<String, dynamic>? params}) async
  => apiClient.user.getList(Endpoint.users, queryParams: params);
}