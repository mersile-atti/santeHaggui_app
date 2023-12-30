import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_page_widget.dart' show CreateAccountPageWidget;
import 'package:flutter/material.dart';

class CreateAccountPageModel extends FlutterFlowModel<CreateAccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EnterYourName widget.
  FocusNode? enterYourNameFocusNode;
  TextEditingController? enterYourNameController;
  String? Function(BuildContext, String?)? enterYourNameControllerValidator;
  String? _enterYourNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EnterYourEmail widget.
  FocusNode? enterYourEmailFocusNode;
  TextEditingController? enterYourEmailController;
  String? Function(BuildContext, String?)? enterYourEmailControllerValidator;
  String? _enterYourEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EnterYourPhoneNumber widget.
  FocusNode? enterYourPhoneNumberFocusNode;
  TextEditingController? enterYourPhoneNumberController;
  String? Function(BuildContext, String?)?
      enterYourPhoneNumberControllerValidator;
  String? _enterYourPhoneNumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;
  String? _confirmPasswordControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (CreateUser)] action in Button widget.
  ApiCallResponse? apiResultct3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    enterYourNameControllerValidator = _enterYourNameControllerValidator;
    enterYourEmailControllerValidator = _enterYourEmailControllerValidator;
    enterYourPhoneNumberControllerValidator =
        _enterYourPhoneNumberControllerValidator;
    confirmPasswordVisibility = false;
    confirmPasswordControllerValidator = _confirmPasswordControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    enterYourNameFocusNode?.dispose();
    enterYourNameController?.dispose();

    enterYourEmailFocusNode?.dispose();
    enterYourEmailController?.dispose();

    enterYourPhoneNumberFocusNode?.dispose();
    enterYourPhoneNumberController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
