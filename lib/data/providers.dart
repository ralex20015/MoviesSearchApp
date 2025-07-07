import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_search_app/data/datasources/api/Api.dart';
import 'package:movie_search_app/data/datasources/api/api_keys.dart';
import 'package:movie_search_app/data/repositories/FakeMoviesRepositoryImpl.dart';
import 'package:movie_search_app/domain/repositories/MoviesRepository.dart';
import 'package:dio/dio.dart';

final dioProvider = Provider<Dio>((ref) {
  final options = BaseOptions(
    baseUrl: Api.baseURL,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    headers: {
      'accept': 'application/json',
      'Authorization': '${ApiKeys.authorizationType} ${ApiKeys.accessToken}',
    },
  );
  final dio = Dio(options);
  dio.interceptors.add(
    LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    ),
  );
  return dio;
});

final movieRepositoryProvider = Provider<MoviesRepository>((ref) {
  return FakeMoviesrepositoryimpl();
});
