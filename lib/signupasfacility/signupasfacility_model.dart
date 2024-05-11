import '/flutter_flow/flutter_flow_util.dart';
import 'signupasfacility_widget.dart' show SignupasfacilityWidget;
import 'package:flutter/material.dart';

class SignupasfacilityModel extends FlutterFlowModel<SignupasfacilityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for facilityfiled widget.
  FocusNode? facilityfiledFocusNode;
  TextEditingController? facilityfiledTextController;
  String? Function(BuildContext, String?)? facilityfiledTextControllerValidator;
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

  @override
  void initState(BuildContext context) {
    facilitypasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    facilityfiledFocusNode?.dispose();
    facilityfiledTextController?.dispose();

    facilityemailFocusNode?.dispose();
    facilityemailTextController?.dispose();

    facilitypasswordFocusNode?.dispose();
    facilitypasswordTextController?.dispose();
  }
}
