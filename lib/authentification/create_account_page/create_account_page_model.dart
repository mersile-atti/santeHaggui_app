import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
      return FFLocalizations.of(context).getText(
        '49m0j4yb' /* Field is required */,
      );
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
      return FFLocalizations.of(context).getText(
        'if4j492e' /* Field is required */,
      );
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
      return FFLocalizations.of(context).getText(
        'm47ymkif' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for passwordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  String? _passwordFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wahd5pjz' /* Field is required */,
      );
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
      return FFLocalizations.of(context).getText(
        'snjartnf' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    enterYourNameControllerValidator = _enterYourNameControllerValidator;
    enterYourEmailControllerValidator = _enterYourEmailControllerValidator;
    enterYourPhoneNumberControllerValidator =
        _enterYourPhoneNumberControllerValidator;
    passwordFieldVisibility = false;
    passwordFieldControllerValidator = _passwordFieldControllerValidator;
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

    passwordFieldFocusNode?.dispose();
    passwordFieldController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
