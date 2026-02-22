import 'package:flutter/material.dart';
import 'package:watch_it/videos_list.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F0F),
        title: Text(
          'Mr. Mohamed El Saka',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 10),
            child: Icon(Icons.notifications, color: Colors.white,),
          ),
          
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId: videos[index].id,
                        flags: YoutubePlayerFlags(
                          mute: false,
                          autoPlay: false
                        )
                      ),
                    ),
                  ),
                ),
                Text(
                  videos[index].title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}


