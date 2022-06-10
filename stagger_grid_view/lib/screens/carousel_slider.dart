import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shared_pref_and_json_parsing/modal_class/modal_class.dart';

class CarouselSliderScreen extends StatefulWidget {
  const CarouselSliderScreen({Key? key}) : super(key: key);

  @override
  State<CarouselSliderScreen> createState() => _CarouselSliderScreenState();
}

class _CarouselSliderScreenState extends State<CarouselSliderScreen> {
  CarouselController carouselController = CarouselController();
  int initialSliderPage = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Carousel Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 400,
                  initialPage: initialSliderPage,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  onPageChanged: (val,_){
                    setState(() {
                      initialSliderPage = val;
                    });
                  }
              ),
              items: images.map((e) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(e),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) => GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (images.indexOf(e) != initialSliderPage) ? Colors.grey : Colors.black
                    ),
                  ),
                ),
              ),).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
