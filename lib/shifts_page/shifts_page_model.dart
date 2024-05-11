import '/components/shiftsnavbar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shifts_page_widget.dart' show ShiftsPageWidget;
import 'package:flutter/material.dart';

class ShiftsPageModel extends FlutterFlowModel<ShiftsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for shiftsnavbar component.
  late ShiftsnavbarModel shiftsnavbarModel1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for shiftsnavbar component.
  late ShiftsnavbarModel shiftsnavbarModel2;

  @override
  void initState(BuildContext context) {
    shiftsnavbarModel1 = createModel(context, () => ShiftsnavbarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    shiftsnavbarModel2 = createModel(context, () => ShiftsnavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    shiftsnavbarModel1.dispose();
    shiftsnavbarModel2.dispose();
  }
}
