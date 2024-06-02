import '/components/application_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'manage_applications_widget.dart' show ManageApplicationsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageApplicationsModel
    extends FlutterFlowModel<ManageApplicationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for application component.
  late ApplicationModel applicationModel;

  @override
  void initState(BuildContext context) {
    applicationModel = createModel(context, () => ApplicationModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    applicationModel.dispose();
  }
}
