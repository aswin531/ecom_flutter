import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DetailImageSlider extends StatefulWidget {
  final Function(int) onChange;
  final List<String> images;
  const DetailImageSlider(
      {super.key, required this.onChange, required this.images});

  @override
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
                return Image.asset(widget.images[index]);
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
                height: 8,
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  color: currentImage == index ? black : transparent,
                  border: Border.all(color: black),
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
