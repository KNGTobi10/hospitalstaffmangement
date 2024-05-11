import '/flutter_flow/flutter_flow_util.dart';
import 'shiftdetails_widget.dart' show ShiftdetailsWidget;
import 'package:flutter/material.dart';

class ShiftdetailsModel extends FlutterFlowModel<ShiftdetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
