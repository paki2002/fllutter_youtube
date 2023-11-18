import 'package:fllutter_youtube/services/api_service.dart';
import 'package:fllutter_youtube/ui/general/colors.dart';
import 'package:fllutter_youtube/ui/general/widgets/item_filter_widget.dart';
import 'package:fllutter_youtube/ui/general/widgets/item_video_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  APIService _apiService =APIService();

  @override
  Widget build(BuildContext context) {

    _apiService.getVideos();
    
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 3),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: kBrandSecondaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    icon: const Icon(Icons.explore_outlined),
                    label: const Text(
                      "Explorar",
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                    child: VerticalDivider(
                      color: Color.fromARGB(255, 181, 177, 177),
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    text: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    text: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Musics",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Programacion",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
              ),
            ItemVideoWidget(),
            ItemVideoWidget(),
            ItemVideoWidget(),
            ItemVideoWidget(),
            ItemVideoWidget(),
             // Espacio entre los botones y la imagen
           
          ],
        ),
      ),
    );
  }
}
