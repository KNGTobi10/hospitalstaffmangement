import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'createshift_widget.dart' show CreateshiftWidget;
import 'package:flutter/material.dart';

class CreateshiftModel extends FlutterFlowModel<CreateshiftWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for titlefield widget.
  FocusNode? titlefieldFocusNode;
  TextEditingController? titlefieldTextController;
  String? Function(BuildContext, String?)? titlefieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for amountField widget.
  FocusNode? amountFieldFocusNode;
  TextEditingController? amountFieldTextController;
  String? Function(BuildContext, String?)? amountFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    titlefieldFocusNode?.dispose();
    titlefieldTextController?.dispose();

    amountFieldFocusNode?.dispose();
    amountFieldTextController?.dispose();
  }
}
