import '/flutter_flow/flutter_flow_util.dart';
import 'update_health_files_component_widget.dart'
    show UpdateHealthFilesComponentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class UpdateHealthFilesComponentModel
    extends FlutterFlowModel<UpdateHealthFilesComponentWidget> {
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
