import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/constant/endpoint.dart';
import 'package:flutter_template/core/networks/api_client.dart';
import 'package:flutter_template/core/networks/error_handler.dart';
import 'package:flutter_template/infrastructure/datasource/base/api_datasource_ext.dart';
import 'package:flutter_template/domain/entities/auth/auth_entity.dart';


class AuthRemoteDataSource {
  final ApiClient apiClient;
  AuthRemoteDataSource(this.apiClient);

  Future<Either<Failure, AuthEntity>> login(String username, String password) async
  => apiClient.auth.post(Endpoint.authLogin, {
        'username': username,
        'password': password,
      });
}