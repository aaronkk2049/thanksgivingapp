import 'package:flutter/material.dart';
import 'Food.dart';

class FoodDetail extends StatefulWidget {
  final Food food;

  const FoodDetail({
    Key? key,
    required this.food,
  }) : super (key: key);

  @override
  _FoodDetailState createState() {
    return _FoodDetailState();
  }
}
class _FoodDetailState extends State<FoodDetail>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.food.name),
        ),
        body: Container(
          color: Colors.black87,
            child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child:Image(
                      image: AssetImage(widget.food.imageUrl),
                    ),
                  ),
                  const SizedBox(
                    height:4,
                  ),
                  Text(
                    '${widget.food.name}\n',
                    style: const TextStyle(color: Colors.white,fontSize:30,fontFamily: 'VastShadow',),
                  ),
                  Text(
                    'Ingredients:\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:35,
                      fontFamily: 'VastShadow',
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(7.0),
                      itemCount: widget.food.ingredients.length,
                      itemBuilder: (BuildContext context, int index){
                        final foody= widget.food.ingredients[index];
                        return Text(foody, style: const TextStyle(color: Colors.white, fontSize:20, fontFamily: 'VastShadow'));
                      },
                    ),
                  ),
                  Text('Recipe: \n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'VastShadow',
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(7.0),
                      itemCount: widget.food.recipe.length,
                      itemBuilder: (BuildContext context, int index){
                        final foody= widget.food.recipe[index];
                        return Text(foody, style: const TextStyle(color:Colors.white,fontSize:20, fontFamily: 'VastShadow'));
                      },
                    ),
                  ),
                ]
            )
        )
    );
  }
}