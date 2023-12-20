import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'make_request_page_widget.dart' show MakeRequestPageWidget;
import 'package:flutter/material.dart';

class MakeRequestPageModel extends FlutterFlowModel<MakeRequestPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for hospitalName widget.
  FocusNode? hospitalNameFocusNode1;
  TextEditingController? hospitalNameController1;
  String? Function(BuildContext, String?)? hospitalNameController1Validator;
  // State field(s) for hospitalLocation widget.
  FocusNode? hospitalLocationFocusNode;
  TextEditingController? hospitalLocationController;
  String? Function(BuildContext, String?)? hospitalLocationControllerValidator;
  // State field(s) for hospitalName widget.
  FocusNode? hospitalNameFocusNode2;
  TextEditingController? hospitalNameController2;
  String? Function(BuildContext, String?)? hospitalNameController2Validator;
  // State field(s) for Date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for DropDownUrgency widget.
  String? dropDownUrgencyValue;
  FormFieldController<String>? dropDownUrgencyValueController;
  // State field(s) for DropDownPints widget.
  String? dropDownPintsValue;
  FormFieldController<String>? dropDownPintsValueController;
  // Stores action output result for [Backend Call - API (makeBloodRequest)] action in Button-Login widget.
  ApiCallResponse? apiResulthqu;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    hospitalNameFocusNode1?.dispose();
    hospitalNameController1?.dispose();

    hospitalLocationFocusNode?.dispose();
    hospitalLocationController?.dispose();

    hospitalNameFocusNode2?.dispose();
    hospitalNameController2?.dispose();

    dateFocusNode?.dispose();
    dateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
