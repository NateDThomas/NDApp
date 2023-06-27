import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_events_model.dart';
export 'no_events_model.dart';

class NoEventsWidget extends StatefulWidget {
  const NoEventsWidget({Key? key}) : super(key: key);

  @override
  _NoEventsWidgetState createState() => _NoEventsWidgetState();
}

class _NoEventsWidgetState extends State<NoEventsWidget> {
  late NoEventsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoEventsModel());
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
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          'No events scheduled.',
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ),
    );
  }
}
