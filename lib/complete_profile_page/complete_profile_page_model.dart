import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'complete_profile_page_widget.dart' show CompleteProfilePageWidget;
import 'package:flutter/material.dart';

class CompleteProfilePageModel
    extends FlutterFlowModel<CompleteProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourUsername widget.
  FocusNode? yourUsernameFocusNode;
  TextEditingController? yourUsernameController;
  String? Function(BuildContext, String?)? yourUsernameControllerValidator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;
  // State field(s) for EnterYourPassword widget.
  FocusNode? enterYourPasswordFocusNode;
  TextEditingController? enterYourPasswordController;
  late bool enterYourPasswordVisibility;
  String? Function(BuildContext, String?)? enterYourPasswordControllerValidator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;
  // State field(s) for yourBirthhday widget.
  FocusNode? yourBirthhdayFocusNode;
  TextEditingController? yourBirthhdayController;
  String? Function(BuildContext, String?)? yourBirthhdayControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    enterYourPasswordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    yourUsernameFocusNode?.dispose();
    yourUsernameController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailController?.dispose();

    enterYourPasswordFocusNode?.dispose();
    enterYourPasswordController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordController?.dispose();

    yourBirthhdayFocusNode?.dispose();
    yourBirthhdayController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
