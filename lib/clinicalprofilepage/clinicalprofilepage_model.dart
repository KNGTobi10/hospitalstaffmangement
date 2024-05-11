import '/components/clinicialprofilenavbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clinicalprofilepage_widget.dart' show ClinicalprofilepageWidget;
import 'package:flutter/material.dart';

class ClinicalprofilepageModel
    extends FlutterFlowModel<ClinicalprofilepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for clinicialprofilenavbar component.
  late ClinicialprofilenavbarModel clinicialprofilenavbarModel;

  @override
  void initState(BuildContext context) {
    clinicialprofilenavbarModel =
        createModel(context, () => ClinicialprofilenavbarModel());
  }

  @override
  void dispose() {
    clinicialprofilenavbarModel.dispose();
  }
}
