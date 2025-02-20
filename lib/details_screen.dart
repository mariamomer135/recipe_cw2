import 'package:flutter/material.dart';
import 'home_screen.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;

  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name, style: TextStyle(fontSize: 24, color: Colors.pink)),
        backgroundColor: Colors.brown[700],
      ),
      body: Container(
        color: Colors.brown[100], 
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                Text(
                  "Ingredients: ${recipe.ingredients}",
                  style: TextStyle(fontSize: 20, color: Colors.pink[800]), 
                  textAlign: TextAlign.center, 
                ),
                SizedBox(height: 20), 
                Text(
                  "Instructions: ${recipe.instructions}",
                  style: TextStyle(fontSize: 20, color: Colors.pink[800]), 
                  textAlign: TextAlign.center, 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
