import 'package:flutter/material.dart';

class BottomNavPainter extends CustomPainter {
  final double ScreenWidth;
  final double ScreenHeight;

  BottomNavPainter({
    required this.ScreenHeight,
    required this.ScreenWidth
});

  @override

  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFE7E6EE)
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(
      (0.0364582067423377 * ScreenWidth),
      size.height - (0.1111815260776269 * ScreenHeight),
      size.width - 2 * (0.0364582067423377 * ScreenWidth),
      (0.3335445782328808 * ScreenHeight),
    );

    final path = Path()
      ..moveTo((0.0364582067423377 * ScreenWidth), size.height)
      ..arcTo(
        rect,
        3.14,
        3.14,
        false,
      )
      ..lineTo(size.width - (0.0364582067423377 * ScreenWidth), size.height)
      ..close(); // Close the path to complete the shape

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomPaint(
          size: Size(double.infinity, (0.1111815260776269 * ScreenHeight)),
          painter: BottomNavPainter(
              ScreenHeight: ScreenHeight,
              ScreenWidth: ScreenWidth
          ),
        ),
        Positioned(
          bottom: (0.0077827068254339 * ScreenHeight),
          left: (0.0200126746939728 * ScreenHeight),
          right: (0.0200126746939728 * ScreenHeight),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/images/Message.png',
                  width: (0.0826386019492988 * ScreenWidth),
                  height: (0.0378017188663932 * ScreenHeight),
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              SizedBox(),
              IconButton(
                icon: Image.asset(
                  'assets/images/Call.png',
                  width: (0.0729164134846754 * ScreenWidth),
                  height: (0.0389135341271694 * ScreenHeight),
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Positioned(
          bottom: (0.0500316867349321 * ScreenHeight),
          left: MediaQuery.of(context).size.width / 2 - (0.0607636779038962 * ScreenWidth),
          child: IconButton(
            icon: Image.asset(
              'assets/images/Home.png',
              width: (0.0680553192523637 * ScreenWidth),
              height: (0.0277953815194067 * ScreenHeight),
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: (0.0048610942323117 * ScreenWidth),
          child: Container(
            height: (0.0444726104310508 * ScreenHeight),
            child: Image.asset(
                'assets/images/Bottom.png'
            ),
          ),
        ),
      ],
    );
  }
}