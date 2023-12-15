import '/backend/api_requests/api_calls.dart';
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
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordController;
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
  // Stores action output result for [Backend Call - API (createEmergencyProfile)] action in Button-Login widget.
  ApiCallResponse? apiResult2l0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordController?.dispose();

    yourBirthhdayFocusNode?.dispose();
    yourBirthhdayController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
