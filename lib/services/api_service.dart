import 'dart:convert';

import 'package:fllutter_youtube/models/video_model.dart';
import 'package:http/http.dart' as http;


class APIService{
  Future<List<VideoModel>> getVideos() async{
    List<VideoModel> videosModel =[];

    String _path = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyAwBN3FLbI7SIlkK4a3adwYbBGhlolKiXg&maxResults=20&regionCode=PE";
    Uri _uri = Uri.parse(_path);

    http.Response response = await http.get(_uri);

   if(response.statusCode == 200){
    Map<String, dynamic> myMap = json.decode(response.body); 
    List videos = myMap["items"];
    videosModel = videos.map((e) => VideoModel.fromJson(e)).toList();
    return videosModel;
    }
      return videosModel;
  }
}