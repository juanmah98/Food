import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Ingredientess',
              style: TextStyle(fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold ) 
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            height: 220,
            width: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      selectedMeal.ingredients[index],
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              itemCount: selectedMeal.ingredients.length,
            ),
          )
        ],
      )),
    );
  }
}
