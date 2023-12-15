import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'new_component_model.dart';
export 'new_component_model.dart';

class NewComponentWidget extends StatefulWidget {
  const NewComponentWidget({
    super.key,
    required this.qrCode,
  });

  final String? qrCode;

  @override
  _NewComponentWidgetState createState() => _NewComponentWidgetState();
}

class _NewComponentWidgetState extends State<NewComponentWidget> {
  late NewComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 200.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          widget.qrCode!,
          width: 300.0,
          height: 200.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
