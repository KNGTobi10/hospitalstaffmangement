import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'emptypaymentpage_model.dart';
export 'emptypaymentpage_model.dart';

class EmptypaymentpageWidget extends StatefulWidget {
  const EmptypaymentpageWidget({super.key});

  @override
  State<EmptypaymentpageWidget> createState() => _EmptypaymentpageWidgetState();
}

class _EmptypaymentpageWidgetState extends State<EmptypaymentpageWidget> {
  late EmptypaymentpageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptypaymentpageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/5566772_2889686-removebg-preview.png',
            width: 300.0,
            height: 200.0,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'No Payment Made',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
          child: Text(
            'It seems that you don\'t have any recent Payment .',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
