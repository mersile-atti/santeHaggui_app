import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class SantehagguiAuthUser {
  SantehagguiAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SantehagguiAuthUser> santehagguiAuthUserSubject =
    BehaviorSubject.seeded(SantehagguiAuthUser(loggedIn: false));
Stream<SantehagguiAuthUser> santehagguiAuthUserStream() =>
    santehagguiAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
