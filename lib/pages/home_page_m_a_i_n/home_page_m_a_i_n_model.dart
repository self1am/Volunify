import '/components/job_card1_widget.dart';
import '/components/job_card2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_m_a_i_n_widget.dart' show HomePageMAINWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageMAINModel extends FlutterFlowModel<HomePageMAINWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for jobCard1 component.
  late JobCard1Model jobCard1Model1;
  // Model for jobCard1 component.
  late JobCard1Model jobCard1Model2;
  // Model for jobCard1 component.
  late JobCard1Model jobCard1Model3;
  // Model for jobCard1 component.
  late JobCard1Model jobCard1Model4;
  // Model for jobCard1 component.
  late JobCard1Model jobCard1Model5;
  // Model for jobCard2 component.
  late JobCard2Model jobCard2Model1;
  // Model for jobCard2 component.
  late JobCard2Model jobCard2Model2;
  // Model for jobCard2 component.
  late JobCard2Model jobCard2Model3;
  // Model for jobCard2 component.
  late JobCard2Model jobCard2Model4;
  // Model for jobCard2 component.
  late JobCard2Model jobCard2Model5;

  @override
  void initState(BuildContext context) {
    jobCard1Model1 = createModel(context, () => JobCard1Model());
    jobCard1Model2 = createModel(context, () => JobCard1Model());
    jobCard1Model3 = createModel(context, () => JobCard1Model());
    jobCard1Model4 = createModel(context, () => JobCard1Model());
    jobCard1Model5 = createModel(context, () => JobCard1Model());
    jobCard2Model1 = createModel(context, () => JobCard2Model());
    jobCard2Model2 = createModel(context, () => JobCard2Model());
    jobCard2Model3 = createModel(context, () => JobCard2Model());
    jobCard2Model4 = createModel(context, () => JobCard2Model());
    jobCard2Model5 = createModel(context, () => JobCard2Model());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    jobCard1Model1.dispose();
    jobCard1Model2.dispose();
    jobCard1Model3.dispose();
    jobCard1Model4.dispose();
    jobCard1Model5.dispose();
    jobCard2Model1.dispose();
    jobCard2Model2.dispose();
    jobCard2Model3.dispose();
    jobCard2Model4.dispose();
    jobCard2Model5.dispose();
  }
}
