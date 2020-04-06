import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montana/categories/categories.dart';
import 'package:montana/constants/colors.dart';
import 'package:montana/headline/headline.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:montana/search/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image.asset('assets/montana-logo.png'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          /// headline widget
          Headline(),

          /// categories widget
          Categories(),

          /// search bar
          SearchWidget(),
        ],
      ),
    );
  }
}

class Meal extends StatefulWidget {
  

  @override
  _MealState createState() => _MealState();
}

class _MealState extends State<Meal> {
  
  @override
  void initState() {
    // getPizzas();
    super.initState();
  }
   
   /// PROVUCI PIZZE KROZ MODEL 
   /// mapirati kroz pizza model podatke 
   /// prikazati ih kao horizontalni skroll

  // getPizzas() {
  //   Pizza({});
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
    );
  }
}


class MealCard extends StatelessWidget {
  const MealCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
    );
  }
}