import '/flutter_flow/flutter_flow_util.dart';
import '/update_emergency_profile_components/update_medicale_profil_emergency_contact_component/update_medicale_profil_emergency_contact_component_widget.dart';
import 'update_medicale_profil_emergency_contact_component_widget.dart'
    show UpdateMedicaleProfilEmergencyContactComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class UpdateMedicaleProfilEmergencyContactComponentModel
    extends FlutterFlowModel<
        UpdateMedicaleProfilEmergencyContactComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for Address widget.
  FocusNode? addressFocusNode1;
  TextEditingController? addressController1;
  String? Function(BuildContext, String?)? addressController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode2;
  TextEditingController? addressController2;
  String? Function(BuildContext, String?)? addressController2Validator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode3;
  TextEditingController? addressController3;
  String? Function(BuildContext, String?)? addressController3Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableController.dispose();
    addressFocusNode1?.dispose();
    addressController1?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    addressFocusNode2?.dispose();
    addressController2?.dispose();

    addressFocusNode3?.dispose();
    addressController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
