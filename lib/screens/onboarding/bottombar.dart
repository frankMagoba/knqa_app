import 'package:flutter/material.dart';

class ImageHandler extends StatelessWidget {
  final String imagePath;
  ImageHandler(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return _buildPageContent(
      background: imagePath,
    );
  }

  Widget _buildPageContent({
    required String background,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: Image.asset(background),
          )
        ],
      ),
    );
  }
}
