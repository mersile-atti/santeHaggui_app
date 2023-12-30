import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ediit_booking_widget.dart' show EdiitBookingWidget;
import 'package:flutter/material.dart';

class EdiitBookingModel extends FlutterFlowModel<EdiitBookingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for personsName widget.
  FocusNode? personsNameFocusNode;
  TextEditingController? personsNameController;
  String? Function(BuildContext, String?)? personsNameControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for problemDescription widget.
  FocusNode? problemDescriptionFocusNode;
  TextEditingController? problemDescriptionController;
  String? Function(BuildContext, String?)?
      problemDescriptionControllerValidator;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    personsNameFocusNode?.dispose();
    personsNameController?.dispose();

    problemDescriptionFocusNode?.dispose();
    problemDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
