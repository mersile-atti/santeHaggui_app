import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddressOrPhoneNumber widget.
  FocusNode? emailAddressOrPhoneNumberFocusNode;
  TextEditingController? emailAddressOrPhoneNumberController;
  String? Function(BuildContext, String?)?
      emailAddressOrPhoneNumberControllerValidator;
  // State field(s) for passwordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressOrPhoneNumberFocusNode?.dispose();
    emailAddressOrPhoneNumberController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
