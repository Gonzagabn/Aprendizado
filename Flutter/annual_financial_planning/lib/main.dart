import 'package:flutter/material.dart';
import 'screens/form_screen.dart';
import 'screens/home_page.dart';
import 'utils/app_routes.dart';

main() => runApp(AnnualFinancialPlanningApp());

class AnnualFinancialPlanningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {AppRoutes.EXPENSE_FORM: (ctx) => FormScreen()},
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
