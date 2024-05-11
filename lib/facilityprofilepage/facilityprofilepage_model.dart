import '/components/profilehomenavbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'facilityprofilepage_widget.dart' show FacilityprofilepageWidget;
import 'package:flutter/material.dart';

class FacilityprofilepageModel
    extends FlutterFlowModel<FacilityprofilepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for profilehomenavbar component.
  late ProfilehomenavbarModel profilehomenavbarModel;

  @override
  void initState(BuildContext context) {
    profilehomenavbarModel =
        createModel(context, () => ProfilehomenavbarModel());
  }

  @override
  void dispose() {
    profilehomenavbarModel.dispose();
  }
}
