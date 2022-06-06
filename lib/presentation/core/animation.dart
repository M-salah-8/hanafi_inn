import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';
import 'package:simple_animations/simple_animations.dart';

class EmojiAnimation extends StatelessWidget {
  const EmojiAnimation(
    this.emoji,
    this.x,
    this.y, {
    Key? key,
  }) : super(key: key);
  final String emoji;
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    final TimelineTween<AniProps> _tween = TimelineTween<AniProps>()
      ..addScene(
              begin: const Duration(seconds: 1),
              end: const Duration(seconds: 2))
          .animate(AniProps.size, tween: Tween<double>(begin: 10.0, end: 20.0))
      ..addScene(
              begin: const Duration(seconds: 0),
              end: const Duration(seconds: 3))
          .animate(AniProps.rotation,
              tween: Tween<double>(begin: 0.0, end: 360.0))
      ..addScene(
              begin: const Duration(seconds: 0),
              end: const Duration(seconds: 3))
          .animate(AniProps.move, tween: Tween<double>(begin: x, end: x + 0.1));
    return CustomAnimation<TimelineValue<AniProps>>(
      control: CustomAnimationControl.mirror,
      tween: _tween,
      duration: const Duration(seconds: 2),
      delay: const Duration(seconds: 1),
      // curve: Curves.easeInOut,
      builder: (context, child, value) {
        return Align(
          alignment: Alignment(value.get(AniProps.move), y),
          child: RotationTransition(
              turns:
                  AlwaysStoppedAnimation(value.get(AniProps.rotation) / 360.0),
              child: Text(emoji,
                  style: TextStyle(fontSize: value.get(AniProps.size)))),
        );
      },
    );
  }
}

class SearchAnimation extends HookWidget {
  const SearchAnimation(this.search, this.toggleControl, {Key? key})
      : super(key: key);
  final IconData search;
  final ValueNotifier<bool> toggleControl;
  @override
  Widget build(BuildContext context) {
    final toggleLoading = useState(false);
    toggleLoading.value = toggleControl.value;
    Size size = MediaQuery.of(context).size;
    return CustomAnimation<double>(
      control: toggleControl.value
          ? CustomAnimationControl.mirror
          : CustomAnimationControl.stop,
      tween: Tween(begin: size.width * 0.1, end: 0),
      duration: const Duration(seconds: 1),
      curve: Curves.easeOut,
      builder: (context, child, value) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              search,
              color: kPrimaryLightColor,
              size: toggleControl.value ? value : size.width * 0.1,
            ),
            if (toggleLoading.value)
              const SpinKitDoubleBounce(
                color: Colors.white,
              )
          ],
        );
      },
    );
  }
}

enum AniProps { size, rotation, move }
