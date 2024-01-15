import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({required this.images, super.key});

  final List<String> images;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  CarouselController controller = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        CarouselSlider(
          carouselController: controller,
          items: widget.images
              .map(
                (image) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/$image',
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.25), BlendMode.srcOver),
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            height: 270,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
          top: 215,
          child: DotsIndicator(
            dotsCount: widget.images.length,
            position: currentIndex,
            onTap: (index) {
              controller.animateToPage(index);
            },
            decorator: const DotsDecorator(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              activeColor: Colors.white,
              size: Size.square(8),
              activeSize: Size.square(8),
            ),
          ),
        ),
      ],
    );
  }
}
