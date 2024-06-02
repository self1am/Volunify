import '/components/saved_job_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'job_list_widget.dart' show JobListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobListModel extends FlutterFlowModel<JobListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for savedJobCard component.
  late SavedJobCardModel savedJobCardModel1;
  // Model for savedJobCard component.
  late SavedJobCardModel savedJobCardModel2;
  // Model for savedJobCard component.
  late SavedJobCardModel savedJobCardModel3;

  @override
  void initState(BuildContext context) {
    savedJobCardModel1 = createModel(context, () => SavedJobCardModel());
    savedJobCardModel2 = createModel(context, () => SavedJobCardModel());
    savedJobCardModel3 = createModel(context, () => SavedJobCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    savedJobCardModel1.dispose();
    savedJobCardModel2.dispose();
    savedJobCardModel3.dispose();
  }
}
