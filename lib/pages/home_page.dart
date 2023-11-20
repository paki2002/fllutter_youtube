import 'package:fllutter_youtube/models/video_model.dart';
import 'package:fllutter_youtube/services/api_service.dart';
import 'package:fllutter_youtube/ui/general/colors.dart';
import 'package:fllutter_youtube/ui/general/widgets/item_filter_widget.dart';
import 'package:fllutter_youtube/ui/general/widgets/item_video_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

final  APIService _apiService =APIService();
List<VideoModel> videos = [];

@override
 initState() {
    super.initState();
    getData();
  }

  getData() {
    _apiService.getVideos().then((value) {
      videos = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    _apiService.getVideos();
    
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
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
                      backgroundColor: kBrandSecondaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0
                      ),
                    ),
                    icon: const Icon(
                      Icons.explore_outlined,
                      ),
                    label: const Text(
                      "Explorar",
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                    child: VerticalDivider(
                      color: kBrandPrimaryColor,
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
            
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: videos.length,
              itemBuilder: (BuildContext context, int index){
                return ItemVideoWidget( 
                  videoModel: videos[index],
                );
              },
              ),
          ],
        ),
      ),
    );
  }
}
