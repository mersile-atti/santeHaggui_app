import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? phone = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "email": "$email",
  "phone": "$phone",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateUser',
      apiUrl: 'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? phone = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "phone": "$phone",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginUser',
      apiUrl: 'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  static Future<ApiCallResponse> call({
    String? usermane = '',
    String? email = '',
    String? phone = '',
    String? password = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$usermane",
  "email": "$email",
  "phone": "$phone",
  "password": "$phone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUser',
      apiUrl: 'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/current',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteUser',
      apiUrl: 'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/delete',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmergencyProfileCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? birthday = '',
    String? gender = '',
    String? bloodType = '',
    String? allergies = '',
    String? medications = '',
    String? treatmentsAndProcedures = '',
    String? emergencyContactName = '',
    String? emergencyContactRelationship = '',
    String? emergencyContactPhone = '',
    String? emergencyContactAddress = '',
    String? address = '',
    String? notes = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "birthday": "$birthday",
  "gender": "$gender",
  "bloodType": "$bloodType",
  "allergies": "$allergies",
  "medications": "$medications",
  "treatmentsAndProcedures": "$treatmentsAndProcedures",
  "emergencyContactName": "$emergencyContactName",
  "emergencyContactRelationship": "$emergencyContactRelationship",
  "emergencyContactPhone": "$emergencyContactPhone",
  "emergencyContactAddress": "$emergencyContactAddress",
  "address": "$address",
  "notes": "$notes"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEmergencyProfile',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmergencyProfileCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? birthday = '',
    String? gender = '',
    String? bloodType = '',
    String? allergies = '',
    String? medications = '',
    String? treatmentsAndProcedures = '',
    String? emergencyContactName = '',
    String? emergencyContactRelationship = '',
    String? emergencyContactPhone = '',
    String? emergencyContactAddress = '',
    String? address = '',
    String? notes = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "birthday": "$birthday",
  "gender": "$gender",
  "bloodType": "$bloodType",
  "allergies": "$allergies",
  "medications": "$medications",
  "treatmentsAndProcedures": "$treatmentsAndProcedures",
  "emergencyContactName": "$emergencyContactName",
  "emergencyContactRelationship": "$emergencyContactRelationship",
  "emergencyContactPhone": "$emergencyContactPhone",
  "emergencyContactAddress": "$emergencyContactAddress",
  "address": "$address",
  "notes": "$notes"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateEmergencyProfile',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/profile',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOneProfileCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOneProfile',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllProfilesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllProfiles',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MakeBloodRequestCall {
  static Future<ApiCallResponse> call({
    String? bloodType = '',
    String? hospitalName = '',
    String? hospitalLocation = '',
    String? status = '',
    String? urgency = '',
    int? pintsNeeded,
    String? diagnosis = '',
    String? shortDescription = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "bloodType": "$bloodType",
  "hospitalName": "$hospitalName",
  "hospitalLocation": "$hospitalLocation",
  "status": "$status",
  "urgency": "$urgency",
  "pintsNeeded": $pintsNeeded,
  "diagnosis": "$diagnosis",
  "shortDescription": "$shortDescription"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'makeBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBloodRequestCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateBloodRequestCall {
  static Future<ApiCallResponse> call({
    String? bloodType = '',
    String? hospitalName = '',
    String? hospitalLocation = '',
    String? status = '',
    String? urgency = '',
    int? pintsNeeded,
    String? diagnosis = '',
    String? shortDescription = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "bloodType": "$bloodType",
  "hospitalName": "$hospitalName",
  "hospitalLocation": "$hospitalLocation",
  "status": "$status",
  "urgency": "$urgency",
  "pintsNeeded": $pintsNeeded,
  "diagnosis": "$diagnosis",
  "shortDescription": "$shortDescription"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests/update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteBloodRequestCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
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
