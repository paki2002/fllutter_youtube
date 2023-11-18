import 'package:fllutter_youtube/pages/home_page.dart';
import 'package:fllutter_youtube/ui/general/colors.dart';
import 'package:flutter/material.dart';

class initPage extends StatefulWidget {
  const initPage({super.key});

  @override
  State<initPage> createState() => _initPageState();
}

class _initPageState extends State<initPage> {
  int _currentIndex = 0;

  List<Widget> _pages = [
  HomePage(),
    Center(child: Text("Shorts")),
    Center(child: Text("Agregar")),
    Center(child: Text("Suscriptores")),
    Center(child: Text("Biblioteca")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBrandPrimaryColor,
        title: Image.asset(
          'assets/images/logo.png',
          height: 56.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children:[
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                Positioned(
                  top: -4,
                  right: -3,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Text("9+",style: TextStyle(fontSize: 12.0),),
                  ),
                ),
              ]

            ),
            ),
              
            
    
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white12,
            radius: 20,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/715546/pexels-photo-715546.jpeg?"),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBrandPrimaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int value) {
            _currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              label: "Principal",
              icon: Icon(
                Icons.home_filled,
              ),
            ),
            BottomNavigationBarItem(
              label: "Short",
              icon: Icon(
                Icons.play_arrow_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                margin: const EdgeInsets.only(top: 4.0),
                child: const Icon(
                  Icons.add_circle_outline,
                  size: 35.0,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Suscriptores",
              icon: Icon(
                Icons.subscriptions_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(
                Icons.video_collection_rounded,
              ),
            ),
          ]),
    );
  }
}
