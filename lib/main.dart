import 'package:docs/core/di/dependency_injection.dart';
import 'package:docs/core/helpers/constants.dart';
import 'package:docs/core/helpers/extensions.dart';
import 'package:docs/core/helpers/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Initialize Flutter binding

  setupGetIt(); // for dependancy injection
  //to fix text been hidden bug in flutter  _screenutil
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
