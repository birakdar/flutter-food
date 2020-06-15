import 'package:flutter/material.dart';
import 'package:food/src/models/food_model.dart';
import 'package:food/src/widgets/home_top_info.dart';
import 'package:food/src/widgets/search_field.dart';
import 'data/food_data.dart';
import 'widgets/food_category.dart';
import 'widgets/bought_foods.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  List<Food> _food = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0,left:20.0,right:20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Freqeuently Bought Foods", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){},
                child: Text("View All", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color: Colors.orangeAccent),),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _food.map(_buildFoodItems).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }

}





