import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SantehagguiAuthUser {
  SantehagguiAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SantehagguiAuthUser> santehagguiAuthUserSubject =
    BehaviorSubject.seeded(SantehagguiAuthUser(loggedIn: false));
Stream<SantehagguiAuthUser> santehagguiAuthUserStream() =>
    santehagguiAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
