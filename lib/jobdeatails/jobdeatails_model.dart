import '/flutter_flow/flutter_flow_util.dart';
import 'jobdeatails_widget.dart' show JobdeatailsWidget;
import 'package:flutter/material.dart';

class JobdeatailsModel extends FlutterFlowModel<JobdeatailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
