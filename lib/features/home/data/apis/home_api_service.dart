import 'package:dio/dio.dart';
import 'package:docs/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../models/specializations_response_model.dart';
import 'home_api_constants_old.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}
