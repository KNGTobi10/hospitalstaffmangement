import '/components/clinicialshiftnavbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clinicalshift_widget.dart' show ClinicalshiftWidget;
import 'package:flutter/material.dart';

class ClinicalshiftModel extends FlutterFlowModel<ClinicalshiftWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for clinicialshiftnavbar component.
  late ClinicialshiftnavbarModel clinicialshiftnavbarModel;

  @override
  void initState(BuildContext context) {
    clinicialshiftnavbarModel =
        createModel(context, () => ClinicialshiftnavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    clinicialshiftnavbarModel.dispose();
  }
}
