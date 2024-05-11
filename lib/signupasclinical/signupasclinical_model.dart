import '/flutter_flow/flutter_flow_util.dart';
import 'signupasclinical_widget.dart' show SignupasclinicalWidget;
import 'package:flutter/material.dart';

class SignupasclinicalModel extends FlutterFlowModel<SignupasclinicalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for namefield widget.
  FocusNode? namefieldFocusNode;
  TextEditingController? namefieldTextController;
  String? Function(BuildContext, String?)? namefieldTextControllerValidator;
  // State field(s) for emailfield widget.
  FocusNode? emailfieldFocusNode;
  TextEditingController? emailfieldTextController;
  String? Function(BuildContext, String?)? emailfieldTextControllerValidator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    namefieldFocusNode?.dispose();
    namefieldTextController?.dispose();

    emailfieldFocusNode?.dispose();
    emailfieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
  }
}
