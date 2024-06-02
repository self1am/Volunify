import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_job_widget.dart' show CreateJobWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreateJobModel extends FlutterFlowModel<CreateJobWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for eventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;
  // State field(s) for loc widget.
  FocusNode? locFocusNode;
  TextEditingController? locTextController;
  String? Function(BuildContext, String?)? locTextControllerValidator;
  // State field(s) for startD widget.
  FocusNode? startDFocusNode;
  TextEditingController? startDTextController;
  final startDMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? startDTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for endD widget.
  FocusNode? endDFocusNode;
  TextEditingController? endDTextController;
  String? Function(BuildContext, String?)? endDTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;

  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  List<EventsRecord>? checkboxGroupPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();

    locFocusNode?.dispose();
    locTextController?.dispose();

    startDFocusNode?.dispose();
    startDTextController?.dispose();

    endDFocusNode?.dispose();
    endDTextController?.dispose();
  }
}
