import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'updated_create_widget.dart' show UpdatedCreateWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdatedCreateModel extends FlutterFlowModel<UpdatedCreateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameTextController1;
  String? Function(BuildContext, String?)? nameTextController1Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode1;
  TextEditingController? confirmPasswordTextController1;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextController1Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameTextController2;
  String? Function(BuildContext, String?)? nameTextController2Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode2;
  TextEditingController? confirmPasswordTextController2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nameFocusNode1?.dispose();
    nameTextController1?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    confirmPasswordFocusNode1?.dispose();
    confirmPasswordTextController1?.dispose();

    nameFocusNode2?.dispose();
    nameTextController2?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    confirmPasswordFocusNode2?.dispose();
    confirmPasswordTextController2?.dispose();
  }
}
