import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/update_emergency_profile_components/update_medicale_profile_user_sex_component/update_medicale_profile_user_sex_component_widget.dart';
import 'update_medicale_profile_user_sex_component_widget.dart'
    show UpdateMedicaleProfileUserSexComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class UpdateMedicaleProfileUserSexComponentModel
    extends FlutterFlowModel<UpdateMedicaleProfileUserSexComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (updateEmergencyProfile)] action in Button widget.
  ApiCallResponse? apiResultpqg;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
