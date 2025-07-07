import 'package:flutter/material.dart';

import 'Game.dart';
import 'ItemCard.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  MyCustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight), // AppBar height
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurple, // AppBar background color
      elevation: 4.0, // Shadow under the AppBar
      leading: IconButton(
        icon: Icon(Icons.menu), // Hamburger menu icon
        onPressed: () {
          // Action when menu is pressed
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the title
        children: [
          Icon(Icons.videogame_asset, color: Colors.white), // Game Icon
          SizedBox(width: 8.0),
          Text(
            'Game Zone', // App title
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search), // Search icon
          onPressed: () {
            // Action when search is pressed
            print('Search pressed');
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications), // Notification icon
          onPressed: () {
            // Action when notifications is pressed
            print('Notifications pressed');
          },
        ),
      ],
    );
  }
}


class Listitem extends StatefulWidget {
  const Listitem({super.key});

  @override
  State<Listitem> createState() => _ListitemState();
}

class _ListitemState extends State<Listitem> {
  List <Game> games = [
    Game(name: 'Mobile Legends:', description: 'Clashing hero: Pick your favorite hero and eliminate all of your enemies!!!', rate: 5, imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Growtopia.jpg/250px-Growtopia.jpg'),
    Game(name: 'Growtopia:', description: 'Trading stuff: Learn how to monopolize your wealth!!!', rate: 3, imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Growtopia.jpg/250px-Growtopia.jpg'),
    Game(name: 'Grow A Garden:', description: 'Building garden: Design your own garden and show it to other!!!', rate: 4, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2WVA1dne-Kt3LbqoS_j6prkI4Gr9miUPefw&s'),
    Game(name: 'Minecraft:', description: 'Creative stuffs: building house, designing and survival!!!', rate: 5, imageUrl: 'https://platform.polygon.com/wp-content/uploads/sites/2/2024/08/s-l1600.jpg?quality=90&strip=all&crop=0%2C5.8203125%2C100%2C88.359375&w=2400'),
    Game(name: 'Minecraft:', description: 'Creative stuffs: building house, designing and survival!!!', rate: 5, imageUrl: 'https://platform.polygon.com/wp-content/uploads/sites/2/2024/08/s-l1600.jpg?quality=90&strip=all&crop=0%2C5.8203125%2C100%2C88.359375&w=2400'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(),
      body: SingleChildScrollView(  // Wrap the Column in a scrollable widget
        child: Column(
          children: games.map((game) {
            return Itemcard(games: game);
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
