// ignore_for_file: avoid_print

import 'package:digital_egypt/core/helpers/constants.dart';
import 'package:dio/dio.dart';

import '../../features/data/models/tawkeel.dart';


class RegistrationWebServices{
  late Dio dio;

  RegistrationWebServices(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    );

    dio = Dio(options);
  }

Future<Tawkeel> getProcuration() async {
  try {
    Response response = await dio.get(tawkeelEndPoint);
    print("API Data: ${response.data}");
    Tawkeel tawkeel = Tawkeel.fromJson(response.data);
    print("OsOsOs:${tawkeel.actions![0]}");
    return tawkeel;
  } catch (e) {
    print("Error fetching API data: $e");
    return Tawkeel(actions: [],formData: [],steps: [],showSteps: false,title: "");
  }
}

}