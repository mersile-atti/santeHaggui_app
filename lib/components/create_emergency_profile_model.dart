import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_emergency_profile_widget.dart' show CreateEmergencyProfileWidget;
import 'package:flutter/material.dart';

class CreateEmergencyProfileModel
    extends FlutterFlowModel<CreateEmergencyProfileWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for birthday widget.
  FocusNode? birthdayFocusNode;
  TextEditingController? birthdayController;
  String? Function(BuildContext, String?)? birthdayControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for allergies widget.
  FocusNode? allergiesFocusNode;
  TextEditingController? allergiesController;
  String? Function(BuildContext, String?)? allergiesControllerValidator;
  // State field(s) for medications widget.
  FocusNode? medicationsFocusNode;
  TextEditingController? medicationsController;
  String? Function(BuildContext, String?)? medicationsControllerValidator;
  // State field(s) for treatmentsAndProcedures widget.
  FocusNode? treatmentsAndProceduresFocusNode;
  TextEditingController? treatmentsAndProceduresController;
  String? Function(BuildContext, String?)?
      treatmentsAndProceduresControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for emergencyContact widget.
  FocusNode? emergencyContactFocusNode;
  TextEditingController? emergencyContactController;
  String? Function(BuildContext, String?)? emergencyContactControllerValidator;
  // State field(s) for EmergencyRelationship widget.
  FocusNode? emergencyRelationshipFocusNode;
  TextEditingController? emergencyRelationshipController;
  String? Function(BuildContext, String?)?
      emergencyRelationshipControllerValidator;
  // State field(s) for EmergencyPhone widget.
  FocusNode? emergencyPhoneFocusNode;
  TextEditingController? emergencyPhoneController;
  String? Function(BuildContext, String?)? emergencyPhoneControllerValidator;
  // State field(s) for emergencyContactAddress widget.
  FocusNode? emergencyContactAddressFocusNode;
  TextEditingController? emergencyContactAddressController;
  String? Function(BuildContext, String?)?
      emergencyContactAddressControllerValidator;
  // Stores action output result for [Backend Call - API (createEmergencyProfile)] action in Button-Login widget.
  ApiCallResponse? apiResulthqu;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    birthdayFocusNode?.dispose();
    birthdayController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    allergiesFocusNode?.dispose();
    allergiesController?.dispose();

    medicationsFocusNode?.dispose();
    medicationsController?.dispose();

    treatmentsAndProceduresFocusNode?.dispose();
    treatmentsAndProceduresController?.dispose();

    emergencyContactFocusNode?.dispose();
    emergencyContactController?.dispose();

    emergencyRelationshipFocusNode?.dispose();
    emergencyRelationshipController?.dispose();

    emergencyPhoneFocusNode?.dispose();
    emergencyPhoneController?.dispose();

    emergencyContactAddressFocusNode?.dispose();
    emergencyContactAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
