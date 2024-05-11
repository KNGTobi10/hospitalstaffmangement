import '/components/paymentnavbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'paymentpage_widget.dart' show PaymentpageWidget;
import 'package:flutter/material.dart';

class PaymentpageModel extends FlutterFlowModel<PaymentpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for paymentnavbar component.
  late PaymentnavbarModel paymentnavbarModel;

  @override
  void initState(BuildContext context) {
    paymentnavbarModel = createModel(context, () => PaymentnavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    paymentnavbarModel.dispose();
  }
}
