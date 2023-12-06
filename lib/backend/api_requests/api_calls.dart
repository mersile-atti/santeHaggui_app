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
    final ffApiRequestBody = '''
{
  "username": "$username",
  "email": "$email",
  "phoneNumber": "$phoneNumber",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addUser',
      apiUrl: 'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
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
    final ffApiRequestBody = '''
{
  "profilePicture": "$profilePicture",
  "name": "$name",
  "birthday": "$birthday",
  "bloodType": "$bloodType",
  "sex": "$sex",
  "allergies": "$allergies",
  "medications": "$medications",
  "treatmentsAndProcedures": "$treatmentsAndProcedures",
  "address": "$address",
  "emergencyContact": "$emergencyContact"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEmergencyProfile',
      apiUrl:
          'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users/profile/emergency-profile',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
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
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "$phoneNumber",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authUser',
      apiUrl:
          'https://santehaggui-app-af1d825f7530.herokuapp.com/api/users/auth',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
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
