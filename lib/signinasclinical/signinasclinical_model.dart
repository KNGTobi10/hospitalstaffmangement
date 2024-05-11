import '/flutter_flow/flutter_flow_util.dart';
import 'signinasclinical_widget.dart' show SigninasclinicalWidget;
import 'package:flutter/material.dart';

class SigninasclinicalModel extends FlutterFlowModel<SigninasclinicalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Emailfield widget.
  FocusNode? emailfieldFocusNode;
  TextEditingController? emailfieldTextController;
  String? Function(BuildContext, String?)? emailfieldTextControllerValidator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailfieldFocusNode?.dispose();
    emailfieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
  }
}
