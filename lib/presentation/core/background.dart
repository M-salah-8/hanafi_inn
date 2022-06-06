import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/core/animation.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            const EmojiAnimation('🎊️', .5, 0.1),
            const EmojiAnimation('📅️', 0.1, 0.9),
            const EmojiAnimation('😴️', -0.2, -0.8),
            const EmojiAnimation('💅️', -0.1, -0.5),
            const EmojiAnimation('🍉️', 0.9, 0.3),
            const EmojiAnimation('🎃️', -0.9, -0.3),
            const EmojiAnimation('🌍️', 0.6, -0.8),
            const EmojiAnimation('🔒️', -0.8, 0.5),
            const EmojiAnimation('🎂️', 0.9, -0.4),
            const EmojiAnimation('🛌️', 0.1, 0.4),
            const EmojiAnimation('🎊️', -.5, -0.1),
            const EmojiAnimation('📅️', -0.1, -0.9),
            const EmojiAnimation('😴️', -0.2, 0.8),
            const EmojiAnimation('💅️', -0.9, 0.9),
            const EmojiAnimation('🍉️', -0.9, 0.3),
            const EmojiAnimation('🎃️', 0.9, 0.9),
            const EmojiAnimation('🌍️', -0.6, -0.8),
            const EmojiAnimation('🔒️', -0.8, -0.5),
            const EmojiAnimation('🎂️', -0.9, -0.4),
            const EmojiAnimation('🛌️', -0.1, -0.4),
            child,
          ],
        ),
      ),
    );
  }
}
