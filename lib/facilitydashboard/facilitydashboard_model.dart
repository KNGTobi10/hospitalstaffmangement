import '/components/homenavbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'facilitydashboard_widget.dart' show FacilitydashboardWidget;
import 'package:flutter/material.dart';

class FacilitydashboardModel extends FlutterFlowModel<FacilitydashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for homenavbar component.
  late HomenavbarModel homenavbarModel;

  @override
  void initState(BuildContext context) {
    homenavbarModel = createModel(context, () => HomenavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homenavbarModel.dispose();
  }
}
