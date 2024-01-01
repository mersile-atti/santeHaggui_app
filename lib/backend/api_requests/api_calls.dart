import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
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
    return ApiManager.instance.makeApiCall(
      callName: 'CreateUser',
      apiUrl: 'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'email': email,
        'phone': phone,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
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
    String? authToken = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loginUser',
      apiUrl: 'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'email': email,
        'phone': phone,
        'password': password,
        'accessToken': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? jwt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
}

class UpdateUserCall {
  static Future<ApiCallResponse> call({
    String? usermane = '',
    String? email = '',
    String? phone = '',
    String? password = '',
    String? jwt = '',
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
        'Authorization': 'Bearer $jwt',
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

  static dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.username''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.phone''',
      );
}

class GetUserCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/current',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  static dynamic umi(dynamic response) => getJsonField(
        response,
        r'''$.umi''',
      );
}

class DeleteUserCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteUser',
      apiUrl: 'https://santehaggui-b8e92b22721c.herokuapp.com/api/users/delete',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $jwt',
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
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createEmergencyProfile',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'name': name,
        'birthday': birthday,
        'gender': gender,
        'bloodType': bloodType,
        'allergies': allergies,
        'medications': medications,
        'treatmentsAndProcedures': treatmentsAndProcedures,
        'emergencyContactName': emergencyContactName,
        'emergencyContactRelationship': emergencyContactRelationship,
        'emergencyContactPhone': emergencyContactPhone,
        'emergencyContactAddress': emergencyContactAddress,
        'address': address,
        'notes': notes,
        'jwt': jwt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  static dynamic birthday(dynamic response) => getJsonField(
        response,
        r'''$.birthday''',
      );
  static dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.gender''',
      );
  static dynamic bloodType(dynamic response) => getJsonField(
        response,
        r'''$.bloodType''',
      );
  static dynamic allergies(dynamic response) => getJsonField(
        response,
        r'''$.allergies''',
      );
  static dynamic medications(dynamic response) => getJsonField(
        response,
        r'''$.medications''',
      );
  static dynamic treatmentsAndProcedures(dynamic response) => getJsonField(
        response,
        r'''$.treatmentsAndProcedures''',
      );
  static dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.address''',
      );
  static dynamic emergencyContact(dynamic response) => getJsonField(
        response,
        r'''$.emergencyContactName''',
      );
  static dynamic emergencyRelationship(dynamic response) => getJsonField(
        response,
        r'''$.emergencyContactRelationship''',
      );
  static dynamic emergencyPhone(dynamic response) => getJsonField(
        response,
        r'''$.emergencyContactPhone''',
      );
  static dynamic emergencyAddress(dynamic response) => getJsonField(
        response,
        r'''$.emergencyContactAddress''',
      );
  static dynamic notes(dynamic response) => getJsonField(
        response,
        r'''$.notes''',
      );
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
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateEmergencyProfile',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/profile',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'name': name,
        'birthday': birthday,
        'gender': gender,
        'bloodType': bloodType,
        'allergies': allergies,
        'medications': medications,
        'treatmentsAndProcedures': treatmentsAndProcedures,
        'address': address,
        'notes': notes,
        'emergencyContactName': emergencyContactName,
        'emergencyContactRelationship': emergencyContactRelationship,
        'emergencyContactPhone': emergencyContactPhone,
        'emergencyContactAddress': emergencyContactAddress,
        'jwt': jwt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.user''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.name''',
      );
  static dynamic birthday(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.birthday''',
      );
  static dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.gender''',
      );
  static dynamic bloodType(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.bloodType''',
      );
  static dynamic allergies(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.allergies''',
      );
  static dynamic medications(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.medications''',
      );
  static dynamic profileID(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile._id''',
      );
  static dynamic treatmentsAndProcedures(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.treatmentsAndProcedures''',
      );
  static dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.address''',
      );
  static dynamic emergencyContact(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.emergencyContactName''',
      );
  static dynamic emergencyRelationship(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.emergencyContactRelationship''',
      );
  static dynamic emergencyPhone(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.emergencyContactPhone''',
      );
  static dynamic emergencyAddress(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.emergencyContactAddress''',
      );
  static dynamic notes(dynamic response) => getJsonField(
        response,
        r'''$.updatedEmergencyProfile.notes''',
      );
}

class GetOneProfileCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOneProfile',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'jwt': jwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic userID(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.user''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.name''',
      );
  static dynamic birthday(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.birthday''',
      );
  static dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.gender''',
      );
  static dynamic bloodType(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.bloodType''',
      );
  static dynamic allergies(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.allergies''',
      );
  static dynamic medications(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.medications''',
      );
  static dynamic treatmentsAndProcedures(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.treatmentsAndProcedures''',
      );
  static dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.address''',
      );
  static dynamic emergencyContact(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactName''',
      );
  static dynamic emergencyContactRelationship(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactRelationship''',
      );
  static dynamic emergencyContactPhone(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactPhone''',
      );
  static dynamic emergencyContactAddress(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactAddress''',
      );
  static dynamic notes(dynamic response) => getJsonField(
        response,
        r'''$.emergencyProfiles.notes''',
      );
}

class GetAllProfilesCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllProfiles',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'jwt': jwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.name''',
      ));
  static String? birthday(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.birthday''',
      ));
  static String? gender(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.gender''',
      ));
  static String? bloodType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.bloodType''',
      ));
  static String? allergies(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.allergies''',
      ));
  static String? medications(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.medications''',
      ));
  static String? treatmentsAndProcedures(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.treatmentsAndProcedures''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.address''',
      ));
  static String? emergencyContact(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactName''',
      ));
  static String? emergencyRelationship(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactRelationship''',
      ));
  static String? emergencyPhone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactPhone''',
      ));
  static String? emergencyAddress(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.emergencyContactAddress''',
      ));
  static String? notes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.emergencyProfiles.notes''',
      ));
}

class MakeBloodRequestCall {
  static Future<ApiCallResponse> call({
    String? bloodType = '',
    String? hospitalName = '',
    String? hospitalLocation = '',
    String? status = '',
    String? urgency = '',
    String? pintsNeeded = '',
    String? diagnosis = '',
    String? shortDescription = '',
    String? jwt = '',
    String? createdAt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'makeBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'bloodType': bloodType,
        'hospitalName': hospitalName,
        'hospitalLocation': hospitalLocation,
        'status': status,
        'urgency': urgency,
        'pintsNeeded': pintsNeeded,
        'diagnosis': diagnosis,
        'shortDescription': shortDescription,
        'jwt': jwt,
        'createdAt': createdAt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? bloodType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bloodType''',
      ));
  static String? hospitalName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.hospitalName''',
      ));
  static String? hospitalLocation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.hospitalLocation''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? urgency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.urgency''',
      ));
  static String? pintsNeeded(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pintsNeeded''',
      ));
  static String? diagnosis(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.diagnosis''',
      ));
  static String? shortDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.shortDescription''',
      ));
  static String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
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
    String? jwt = '',
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
        'Authorization': 'Bearer $jwt',
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
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'id': id,
        'jwt': jwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllBloodRequestCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'jwt': jwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? bloodType(dynamic response) => (getJsonField(
        response,
        r'''$..bloodType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? hospitalName(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:].hospitalName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? hospitalLocation(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:].hospitalLocation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? urgency(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:].urgency''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? pintsNeeded(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:].pintsNeeded''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? diagnosis(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:].diagnosis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:].shortDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bloodRequestID(dynamic response) => (getJsonField(
        response,
        r'''$.bloodRequests[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SetProfilePicCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? images = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'setProfilePic',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/healthRecords/profile/pic',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'photUrl': images,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfilePicCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfilePic',
      apiUrl:
          'https://backend-server-santehaggui.omamcollection.shop/api/healthRecords/profile/pic',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'jwt': jwt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? photoUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userPic.photUrl''',
      ));
}

class ResponseBloodRequestCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'responseBloodRequest',
      apiUrl:
          'https://santehaggui-b8e92b22721c.herokuapp.com/api/blood-requests/respond/$id',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'jwt': jwt,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class JnjCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'jnj',
      apiUrl:
          'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=Example',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
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
