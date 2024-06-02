import '/components/job_card2_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'job_viewing_widget.dart' show JobViewingWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobViewingModel extends FlutterFlowModel<JobViewingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for jobCard2Copy component.
  late JobCard2CopyModel jobCard2CopyModel;

  @override
  void initState(BuildContext context) {
    jobCard2CopyModel = createModel(context, () => JobCard2CopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    jobCard2CopyModel.dispose();
  }
}
