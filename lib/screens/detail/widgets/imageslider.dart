import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DetailImageSlider extends StatefulWidget {
  final Function(int) onChange;
  final List<String> images;
  final String? productTag;

  const DetailImageSlider(
      {super.key,
      required this.onChange,
      required this.images,
      this.productTag});

  @override
  // ignore: library_private_types_in_public_api
  _DetailImageSliderState createState() => _DetailImageSliderState();
}

class _DetailImageSliderState extends State<DetailImageSlider> {
  int currentImage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentImage);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.images.length,
              onPageChanged: (index) {
                setState(() {
                  currentImage = index;
                });
                widget.onChange(index);
              },
              itemBuilder: (context, index) {
                return Hero(
                    tag: widget.images[index],
                    child: Image.asset(widget.images[index]));
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.images.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: currentImage == index ? 15 : 8,
                height: 5,
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  color: currentImage == index ? blue : transparent,
                  border: Border.all(color: bgFog),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
