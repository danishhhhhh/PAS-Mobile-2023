import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselPage extends StatelessWidget {
   CarouselPage({Key? key});

  final List<String> imageAssetPaths = [
    "assets/images/dump/poster1.jpg",
    "assets/images/dump/poster2.jpg",
    "assets/images/dump/poster3.jpg",
  ];

  List<Widget> get imageSliders {
    return imageAssetPaths.map((assetPath) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
            width: 1000.0,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 0,
            autoPlay: true,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}