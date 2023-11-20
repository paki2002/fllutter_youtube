

import 'package:fllutter_youtube/ui/general/colors.dart';
import 'package:fllutter_youtube/ui/general/widgets/item_video_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  String videoId; 

  VideoDetailPage({required this.videoId,});

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {

late  YoutubePlayerController _playerController;

  

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playerController = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideControls: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(
        children: [
          SizedBox(
             height:height * 0.35, 
            child: YoutubePlayer(
              controller: _playerController,
              progressColors: ProgressBarColors(
                playedColor:Colors.red,
                handleColor: Colors.red,
                bufferedColor: Colors.white54,
                backgroundColor: Colors.white.withOpacity(0.1),
                ),
              ),
          ),        
          ListTile(

            title: Text(
              "Lorem insup dolor sit amet Lorem marco riverwa",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.3,
                color: Colors.white,
                fontSize: 14.0
              ),
            ),
            subtitle: Text(
              "6.5 M de vistas hace 2 años",
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13.0
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ), 
          ),
         Expanded(child:SingleChildScrollView(
          child: Column(
            children: [
               SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ItemVideoDetailWidget(
                    text:"53 k",
                    icon: Icons.thumb_up_alt_outlined,
                  ),
                  ItemVideoDetailWidget(
                    text:"No me gusta",
                    icon: Icons.thumb_down_alt_outlined,
                  ), 
                  ItemVideoDetailWidget(
                    text:"Compartir",
                    icon: Icons.share,
                  ),
                  ItemVideoDetailWidget(
                    text:"Crear",
                    icon: Icons.play_arrow_rounded,
                  ),
                  ItemVideoDetailWidget(
                    text:"Descargar",
                    icon: Icons.download_rounded,
                  ),
                  ItemVideoDetailWidget(
                    text:"Gracias",
                    icon: Icons.download_rounded,
                  ),
                  ItemVideoDetailWidget(
                    text:"Guardar",
                    icon: Icons.download_rounded,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.white24,
          ),
          ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.white24,
               backgroundImage: NetworkImage("https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?",),
             ),
             title: Text(
              "Marco Rivera", 
             style: TextStyle(
              color:Colors.white,
              fontSize: 14.0
             ),
            ),
           subtitle: Text(
              "1.43 M de suscriptores", 
             style: TextStyle(
              color:Colors.white70,
              fontSize: 12.0
             ),
            ),
            trailing:  Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "SUSCRITO", 
                  style: TextStyle(
                     color:Colors.white,
                     fontSize: 14.0
                  ),
                ),
                SizedBox(
                  width: 6.0,
                ),
                Icon(
                  Icons.notifications_none, 
                  color:Colors.white70,
                  ),
              ],
             ),
          ),
          Divider(
            color: Colors.white24,
          ),
          Container(
            height: 200,
            color:Colors.indigo,
          ),
          Container(
            height: 200,
            color:Colors.yellow,
          ),
          Container(
            height: 200,
            color:Colors.red,
          ),
            ],
            ),
         ),
         ),
        ],
      ),
    );
  }
}