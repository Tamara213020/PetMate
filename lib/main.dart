import 'package:flutter/material.dart';
import 'core/app_router.dart';
import 'core/theme.dart';

void main() {
  runApp(PetMateApp());
}

class PetMateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetMate',
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/login',
    );
  }
}
