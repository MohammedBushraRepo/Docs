import 'package:docs/core/di/dependency_injection.dart';
import 'package:docs/features/home/logic/home_cubit.dart';
import 'package:docs/features/home/ui/home_screen.dart';
import 'package:docs/features/login/logic/cubit/login_cubit.dart';
import 'package:docs/features/login/ui/login_screen.dart';
import 'package:docs/features/onBoarding/onBoarding_screen.dart';
import 'package:docs/features/sign_up/logic/sign_up_cubit.dart';
import 'package:docs/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:docs/core/routing/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.SignUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(
              getIt()..getSpecialization(),
            ),
            child: const HomeScreen(),
          ),
        );
      default:
        // return MaterialPageRoute(
        //   builder: (_) => Scaffold(
        //     body: Center(
        //       child: Text('No route defined for ${settings.name}'),
        //     ),
        //   ),
        // );
        return null; // Return null if no route is defined for the provided name.
    }
  }
}
