import 'package:flutter/material.dart';
import 'details_screen.dart';

class Recipe {
  final String name;
  final String ingredients;
  final String instructions;

  Recipe({required this.name, required this.ingredients, required this.instructions});
}

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: "Alfredo Pasta",
      ingredients: "Pasta, Cream, Parmesan, Garlic",
      instructions: "\n• Boil pasta until al dente.\n• In a pan, heat cream and garlic.\n• Stir in Parmesan until smooth.\n• Combine with pasta and serve."
    ),
    Recipe(
      name: "Chocolate Cake",
      ingredients: "Flour, Cocoa, Sugar, Eggs",
      instructions: "\n• Preheat oven to 350°F.\n• Mix dry ingredients together.\n• Add eggs and mix until smooth.\n• Pour into a pan and bake for 30-35 minutes."
    ),
    Recipe(
      name: "Brownies",
      ingredients: "Flour, Cocoa, Butter, Sugar, Eggs",
      instructions: "\n• Preheat oven to 350°F.\n• Melt butter and mix with sugar.\n• Add eggs and cocoa, then stir in flour.\n• Pour into a greased pan and bake for 25-30 minutes."
    ),
    Recipe(
      name: "Matcha Latte",
      ingredients: "Matcha Powder, Milk, Sweetener",
      instructions: "\n• Whisk matcha powder with hot water until frothy.\n• Heat milk separately.\n• Combine with matcha.\n• Add sweetener to taste."
    ),
    Recipe(
      name: "Tiramisu",
      ingredients: "Mascarpone, Coffee, Ladyfingers, Cocoa",
      instructions: "\n• Brew strong coffee and let cool.\n• Dip ladyfingers in coffee and layer with mascarpone mixture.\n• Repeat layers and dust with cocoa.\n• Chill for a few hours before serving."
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.brown.shade300, Color(0xFFF5DEB3), Colors.pink.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.brown.shade100,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: Text(
                  recipes[index].name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown.shade800),
                ),
                trailing: Icon(Icons.arrow_forward, color: Colors.brown.shade700),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(recipe: recipes[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
