import '/components/update_medicale_profile_name_component/update_medicale_profile_name_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_medicale_profile_name_component_widget.dart'
    show UpdateMedicaleProfileNameComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class UpdateMedicaleProfileNameComponentModel
    extends FlutterFlowModel<UpdateMedicaleProfileNameComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
