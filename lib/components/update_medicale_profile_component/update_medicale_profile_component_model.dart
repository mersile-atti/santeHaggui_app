import '/components/update_medicale_profile_component/update_medicale_profile_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_medicale_profile_component_widget.dart'
    show UpdateMedicaleProfileComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class UpdateMedicaleProfileComponentModel
    extends FlutterFlowModel<UpdateMedicaleProfileComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

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
