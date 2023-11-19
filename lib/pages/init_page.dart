import 'package:fllutter_youtube/pages/home_page.dart';
import 'package:fllutter_youtube/ui/general/colors.dart';
import 'package:flutter/material.dart';

class initPage extends StatefulWidget {
  const initPage({Key? key}) : super(key: key);

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
          height: 26.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children:[
                const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                Positioned(
                  top: -2,
                  right: -4,
                  child: Container(
                    padding:const EdgeInsets.all(2.4),
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Text("9+",style: TextStyle(fontSize: 10.0),),
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
            width: 15.0,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white12,
            radius: 15.0,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/715546/pexels-photo-715546.jpeg?"),
          ),
          const SizedBox(
            width: 15.0,
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
        const   BottomNavigationBarItem(
              label: "Principal",
              icon: Icon(
                Icons.home_filled,
              ),
            ),
        const  BottomNavigationBarItem(
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
                size: 33.0,
              ),
            )),
        const  BottomNavigationBarItem(
              label: "Suscriptores",
              icon: Icon(
                Icons.subscriptions_rounded,
              ),
            ),
        const  BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(
                Icons.video_collection_rounded,
              ),
            ),
          ]),
    );
  }
}
