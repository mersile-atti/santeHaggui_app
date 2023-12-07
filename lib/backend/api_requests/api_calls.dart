import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetUsdCodeCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsdCode',
      apiUrl: 'http://country.io/phone.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CountryNamesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'countryNames',
      apiUrl: 'http://country.io/names.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AddUserCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? phoneNumber = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addUser',
      apiUrl: 'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateEmergencyProfileCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? birthday = '',
    String? bloodType = '',
    String? sex = '',
    List<String>? treatmentsAndProceduresList,
    String? allergies = '',
    List<String>? medicationsList,
    String? address = '',
    dynamic emergencyContactJson,
    String? profilePicture = '',
  }) async {
    final treatmentsAndProcedures = _serializeList(treatmentsAndProceduresList);
    final medications = _serializeList(medicationsList);
    final emergencyContact = _serializeJson(emergencyContactJson);

    return ApiManager.instance.makeApiCall(
      callName: 'createEmergencyProfile',
      apiUrl:
          'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users/profile/emergency-profile',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'birthday': birthday,
        'bloodType': bloodType,
        'sex': sex,
        'treatmentsAndProcedures': treatmentsAndProcedures,
        'allergies': allergies,
        'medications': medications,
        'address': address,
        'emergencyContact': emergencyContact,
        'profilePicture': profilePicture,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AuthUserCall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? password = '',
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'authUser',
      apiUrl:
          'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users/auth',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? umi = '',
    String? phoneNumber = '',
    int? authToken,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl:
          'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserLogoutCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'userLogout',
      apiUrl:
          'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users/logout',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
