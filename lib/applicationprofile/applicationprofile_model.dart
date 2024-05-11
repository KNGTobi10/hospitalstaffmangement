import '/flutter_flow/flutter_flow_util.dart';
import 'applicationprofile_widget.dart' show ApplicationprofileWidget;
import 'package:flutter/material.dart';

class ApplicationprofileModel
    extends FlutterFlowModel<ApplicationprofileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for descriptionfield widget.
  FocusNode? descriptionfieldFocusNode;
  TextEditingController? descriptionfieldTextController;
  String? Function(BuildContext, String?)?
      descriptionfieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionfieldFocusNode?.dispose();
    descriptionfieldTextController?.dispose();
  }
}
