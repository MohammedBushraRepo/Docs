import 'package:docs/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';
void main() {

  setupGetIt(); // for dependancy injection
  runApp(DocApp(
    appRouter: AppRouter(),
  ),); 
}