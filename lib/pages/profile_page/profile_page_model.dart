import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/about_widget.dart';
import '/components/education_widget.dart';
import '/components/profile_detail_widget.dart';
import '/components/skill_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for about component.
  late AboutModel aboutModel;
  // Model for ProfileDetail component.
  late ProfileDetailModel profileDetailModel;
  // Model for education component.
  late EducationModel educationModel;
  // Model for skill component.
  late SkillModel skillModel;

  @override
  void initState(BuildContext context) {
    aboutModel = createModel(context, () => AboutModel());
    profileDetailModel = createModel(context, () => ProfileDetailModel());
    educationModel = createModel(context, () => EducationModel());
    skillModel = createModel(context, () => SkillModel());
  }

  @override
  void dispose() {
    aboutModel.dispose();
    profileDetailModel.dispose();
    educationModel.dispose();
    skillModel.dispose();
  }
}
