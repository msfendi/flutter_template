import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/models/base_response.dart';
import 'package:flutter_template/core/models/base_response_list.dart';
import 'package:flutter_template/core/networks/api_client.dart';
import 'package:flutter_template/core/networks/error_handler.dart';
import 'package:flutter_template/core/networks/result_handler.dart';
// Define the generic API data source class
class ApiDataSource<T> {
  final ApiClient apiClient;
  final T Function(Map<String, dynamic>) fromJson;

  ApiDataSource(this.apiClient, this.fromJson);

  Future<Either<Failure, T>> get(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await apiClient.get(
        endpoint,
        queryParameters: queryParameters,
      );
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        response.statusCode ?? 0,
        fromJson,
      );
      if (baseResponse.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: response.statusCode!));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: 400));
    }
  }

  Future<Either<Failure, List<T>>> getList(String endpoint, {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await apiClient.get(endpoint, queryParameters: queryParams);
      final baseResponse = BaseResponseList<T>.fromJson(
        response.data,
        response.statusCode ?? 0,
        (data) => data.map((item) => fromJson(item)).toList(),
      );
      if (baseResponse.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: response.statusCode!));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: 400));
    }
  }

  Future<Either<Failure, T>> post(String endpoint, Map<String, dynamic> data, {bool formData = false}) async {
    try {
      final response = await apiClient.post(endpoint, data: formData ? FormData.fromMap(data) : data);
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        response.statusCode ?? 0,
        fromJson,
      );
      if (baseResponse.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: response.statusCode!));
    } catch (e, stacktrace) {
      debugPrint("ERROR POST: ${e.toString()}");
      debugPrint("STACKTRACE POST: ${stacktrace.toString()}");
      return Left(Failure(message: e.toString(), statusCode: 400));
    }
  }

  Future<Either<Failure, Results>> postNew(String endpoint, Map<String, dynamic> data, {bool formData = false}) async {
    try {
      final response = await apiClient.post(endpoint, data: formData ? FormData.fromMap(data) : data);
      if (response.statusCode == 200) {
        return Right(Results(
          rc: response.data['rc'],
          statusCode: response.statusCode!,
          message: response.data['message'],
          data: response.data['payload']?['data']
        ));
      }
      return Left(Failure(message: response.data['message'], statusCode: response.statusCode!));
    } catch (e, stacktrace) {
      debugPrint("ERROR POST: ${e.toString()}");
      debugPrint("STACKTRACE POST: ${stacktrace.toString()}");
      return Left(Failure(message: e.toString(), statusCode: 400));
    }
  }

  Future<Either<Failure, T>> delete(String endpoint) async {
    try {
      final response = await apiClient.delete(endpoint);
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        response.statusCode ?? 0,
        fromJson,
      );
      if (baseResponse.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: response.statusCode!));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: 400));
    }
  }

  Future<Either<Failure, T>> put(String endpoint, Map<String, dynamic> data, {bool formData = false}) async {
    try {
      final response = await apiClient.put(endpoint, data: formData ? FormData.fromMap(data) : data);
      final baseResponse = BaseResponse<T>.fromJson(
        response.data,
        response.statusCode ?? 0,
        fromJson,
      );
      if (baseResponse.success) {
        return Right(baseResponse.data);
      }
      return Left(Failure(message: baseResponse.message, statusCode: response.statusCode!));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(Failure(message: e.toString(), statusCode: 400));
    }
  }
}