import 'package:flutter/material.dart';
import 'package:food/screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screeen.dart';
import './screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.pink,
          canvasColor: Color.fromARGB(255, 254, 229, 229),
          fontFamily: 'Releway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontSize: 18,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        // '/category-meals': (ctx) => CateogryMealsScreen()
        CateogryMealsScreen.routeName: (ctx) => CateogryMealsScreen(),
        MealDetailScreen.routName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen()) ;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
