import 'package:flutter/material.dart';

import 'screens/tabs_screen.dart';
import 'screens/categories_inside_screen.dart';
import 'utils/app_routes.dart';
import 'utils/app_colors.dart';
import './screens/login_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOBI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.myCustomBlackBlue,
        hintColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(247, 247, 247, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontSize: 15,
            fontFamily: 'RobotoCondensed',
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        AppRoutes.LOGIN: (ctx) => LoginScreen(),
        AppRoutes.HOME: (ctx) => TabsScreen(email: '',),
        AppRoutes.SCREEN: (ctx) => CategoriesInsideScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) {
          return TabsScreen(email: '',);
        });
      },
    );
  }
}
