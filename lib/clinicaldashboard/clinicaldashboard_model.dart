import '/components/clinicialhomenavbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clinicaldashboard_widget.dart' show ClinicaldashboardWidget;
import 'package:flutter/material.dart';

class ClinicaldashboardModel extends FlutterFlowModel<ClinicaldashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for clinicialhomenavbar component.
  late ClinicialhomenavbarModel clinicialhomenavbarModel;

  @override
  void initState(BuildContext context) {
    clinicialhomenavbarModel =
        createModel(context, () => ClinicialhomenavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    clinicialhomenavbarModel.dispose();
  }
}
