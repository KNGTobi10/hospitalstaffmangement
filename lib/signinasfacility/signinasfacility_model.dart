import '/flutter_flow/flutter_flow_util.dart';
import 'signinasfacility_widget.dart' show SigninasfacilityWidget;
import 'package:flutter/material.dart';

class SigninasfacilityModel extends FlutterFlowModel<SigninasfacilityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for facilityemail widget.
  FocusNode? facilityemailFocusNode;
  TextEditingController? facilityemailTextController;
  String? Function(BuildContext, String?)? facilityemailTextControllerValidator;
  // State field(s) for facilitypassword widget.
  FocusNode? facilitypasswordFocusNode;
  TextEditingController? facilitypasswordTextController;
  late bool facilitypasswordVisibility;
  String? Function(BuildContext, String?)?
      facilitypasswordTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    facilitypasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    facilityemailFocusNode?.dispose();
    facilityemailTextController?.dispose();

    facilitypasswordFocusNode?.dispose();
    facilitypasswordTextController?.dispose();
  }
}
