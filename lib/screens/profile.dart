
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:wild_route/screens/community.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 23, 23),
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/profile.png'), 
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'USER', 
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Travel Enthusiast', 
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityForum()), 
                );
              },
              child: Text('Community Forum'),
            ),
            SizedBox(height: 20.0),
            VideoCarousel(), 
          ],
        ),
      ),
    );
  }
}

class VideoCarousel extends StatefulWidget {
  @override
  _VideoCarouselState createState() => _VideoCarouselState();
}

class _VideoCarouselState extends State<VideoCarousel> {
  late CarouselController _carouselController;
  late List<VideoPlayerController> _videoControllers;
  late List<ChewieController> _chewieControllers;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
    _videoControllers = [
      VideoPlayerController.asset('assets/images/videos/travel1.mp4'),
      VideoPlayerController.asset('assets/images/videos/travel2.mp4'),
      VideoPlayerController.asset('assets/images/videos/travel3.mp4'),
      VideoPlayerController.asset('assets/images/videos/travel4.mp4'),
      
    ];
    _chewieControllers = _videoControllers
        .map((controller) => ChewieController(
              videoPlayerController: controller,
              autoPlay: true, 
              looping: true,
              allowPlaybackSpeedChanging: false, 
              showControls: false, 
              autoInitialize: true,
              aspectRatio: 16 / 9,
              materialProgressColors: ChewieProgressColors(
                playedColor: Colors.transparent,
                handleColor: Colors.transparent,
                bufferedColor: Colors.transparent,
                backgroundColor: Colors.transparent,
              ),
              placeholder: Container(), 
            ))
        .toList();
  }

  @override
  void dispose() {
    _videoControllers.forEach((controller) => controller.dispose());
    _chewieControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: _carouselController,
      itemCount: _chewieControllers.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0), 
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0), 
            child: Chewie(
              controller: _chewieControllers[index],
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 208.0,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        autoPlay: false,
        aspectRatio: 10 / 9,
        viewportFraction: 0.8,
        onPageChanged: (index, reason) {
          _chewieControllers.forEach((controller) => controller.pause());
          _chewieControllers[index].play();
        },
      ),
    );
  }
}

