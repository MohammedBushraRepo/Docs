import 'package:docs/core/helpers/constants.dart';
import 'package:docs/core/routing/app_router.dart';
import 'package:docs/core/theming/colors.dart';
import 'package:docs/main.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false, //take dubg mode banner
          initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
//isLoggedInUser ? Routes.homeScreen :
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
