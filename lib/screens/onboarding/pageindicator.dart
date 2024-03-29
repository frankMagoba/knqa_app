import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageIndicator extends StatelessWidget {
  bool isCurrentPage;
  PageIndicator(this.isCurrentPage);

  @override
  Widget build(BuildContext context) {
    return _buildPageIndicator(
      currentpage: isCurrentPage,
    );
  }

  Widget _buildPageIndicator({
    required bool currentpage,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 10.0,
      width: 10,
      decoration: BoxDecoration(
        color: currentpage ? Colors.orange : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
