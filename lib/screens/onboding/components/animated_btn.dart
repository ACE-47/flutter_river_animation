import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';

class AnimatedButton extends StatelessWidget {
  final RiveAnimationController _btnAnimationController;
  final VoidCallback press;

  const AnimatedButton({
    super.key,
    required RiveAnimationController btnAnimationController,
    required this.press,
  }) : _btnAnimationController = btnAnimationController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: size.height * 0.064,
        width: size.width * 0.75,
        child: Stack(
          children: [
            RiveAnimation.asset(
              'assets/RiveAssets/button.riv',
              controllers: [
                _btnAnimationController,
              ],
            ),
            const Positioned.fill(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.arrow_right),
                  SizedBox(width: 8),
                  Text(
                    'Start The Course',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
