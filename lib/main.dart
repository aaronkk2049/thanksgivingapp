import 'package:flutter/material.dart';
import 'Food.dart';
import 'FoodDetail.dart';
void main() {
  runApp(const ThanksGivingApp());
}

class ThanksGivingApp extends StatelessWidget {
  const ThanksGivingApp({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme= ThemeData();
    return MaterialApp(
      title: 'ThanksGiving!',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.orange[800],
          secondary: Colors.grey,
        ),
      ),
      home: const MyHomePage(title: 'ThanksGiving Foods!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index=0;
  List screens=[const HomePage(),const TurkeyPage(),const DrinkPage(),const DessertPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'CroissantOne',
          ),
        ),
        centerTitle: true,
        toolbarOpacity: 0.9,
      ),
      body: screens[index],
      bottomNavigationBar: buildMyNavigationBar(context),
    );
  }
  Container buildMyNavigationBar(BuildContext context){
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.orange[600],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                index = 0;
              });
            },
            icon: index == 0
                ?  Icon(
              Icons.home_filled,
              color: Colors.red[800],
              size: 35,
            )
                :  Icon(
              Icons.home_outlined,
              color: Colors.red[800],
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                index = 1;
              });
            },
            icon: index == 1
                ?  Icon(
              Icons.fastfood_rounded,
              color: Colors.red[800],
              size: 35,
            )
                :  Icon(
              Icons.fastfood_outlined,
              color: Colors.red[800],
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                index = 2;
              });
            },
            icon: index == 2
                ?  Icon(
              Icons.local_drink_rounded,
              color: Colors.red[800],
              size: 35,
            )
                :  Icon(
              Icons.local_drink_outlined,
              color: Colors.red[800],
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                index = 3;
              });
            },
            icon: index == 3
                ?  Icon(
              Icons.food_bank,
              color: Colors.red[800],
              size: 35,
            )
                :  Icon(
              Icons.food_bank_outlined,
              color: Colors.red[800],
              size: 35,
            ),
          ),
        ],
      )
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.black87,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Happy ThanksGiving!",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'VastShadow',
                fontSize: 45,
              ),
            ),
            Container(
              child: new Image.asset(
                'mainpage.jpg',
                height: 450.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Hope you enjoy the recipes here!",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'VastShadow',
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class TurkeyPage extends StatelessWidget {
  const TurkeyPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return FoodDetail(food: Food.turkeys[index]);
                  },
                ),
              );
            },
            child: buildCard(Food.turkeys[index]),
          );
        },
      ),
    );
  }
  Widget buildCard(Food food) {
    return Card(
      // 1
      elevation: 2.0,
      color: Colors.black87,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(food.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              food.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Oldenburg',
              ),
            )
          ],
        ),
      ),
    );
  }
}
class DrinkPage extends StatelessWidget {
  const DrinkPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return FoodDetail(food: Food.drinks[index]);
                  },
                ),
              );
            },
            child: buildCard(Food.drinks[index]),
          );
        },
      ),
    );
  }

  Widget buildCard(Food food) {
    return Card(
      // 1
      elevation: 2.0,
      color: Colors.black87,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(food.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              food.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'MountainsOfChristmas',
              ),
            )
          ],
        ),
      ),
    );
  }
}
class DessertPage extends StatelessWidget {
  const DessertPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return FoodDetail(food: Food.desserts[index]);
                  },
                ),
              );
            },
            child: buildCard(Food.desserts[index]),
          );
        },
      ),
    );
  }
  Widget buildCard(Food food) {
    return Card(
      // 1
      elevation: 2.0,
      color: Colors.black87,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(food.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              food.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'CroissantOne',
              ),
            )
          ],
        ),
      ),
    );
  }
}

