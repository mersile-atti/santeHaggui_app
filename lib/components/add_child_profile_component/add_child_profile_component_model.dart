import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_child_profile_component_widget.dart'
    show AddChildProfileComponentWidget;
import 'package:flutter/material.dart';

class AddChildProfileComponentModel
    extends FlutterFlowModel<AddChildProfileComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthController;
  String? Function(BuildContext, String?)? dateOfBirthControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    dateOfBirthFocusNode?.dispose();
    dateOfBirthController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
