import '/flutter_flow/flutter_flow_util.dart';
import 'jobdescription_widget.dart' show JobdescriptionWidget;
import 'package:flutter/material.dart';

class JobdescriptionModel extends FlutterFlowModel<JobdescriptionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for descriptionfield widget.
  FocusNode? descriptionfieldFocusNode;
  TextEditingController? descriptionfieldTextController;
  String? Function(BuildContext, String?)?
      descriptionfieldTextControllerValidator;
  // State field(s) for responsibitiesField widget.
  FocusNode? responsibitiesFieldFocusNode;
  TextEditingController? responsibitiesFieldTextController;
  String? Function(BuildContext, String?)?
      responsibitiesFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionfieldFocusNode?.dispose();
    descriptionfieldTextController?.dispose();

    responsibitiesFieldFocusNode?.dispose();
    responsibitiesFieldTextController?.dispose();
  }
}
