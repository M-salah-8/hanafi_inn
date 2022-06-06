import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';
import 'package:simple_animations/simple_animations.dart';

class CustomCard extends HookWidget {
  const CustomCard({Key? key, required this.name, required this.date})
      : super(key: key);
  final String date;
  final String name;

  @override
  Widget build(BuildContext context) {
    final displayMedium = Theme.of(context).textTheme.displayMedium;
    final displayLarge = Theme.of(context).textTheme.displayLarge;
    final datePressed = useState(false);
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: AnimatedContainer(
        padding: EdgeInsets.all(size.height * 0.02),
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.elliptical(4, 4)),
          border: Border.all(width: 3, color: kPrimaryColor),
          color: kPrimaryColor,
        ),
        child: Column(
          children: [
            if (datePressed.value) ...[
              PlayAnimation<double>(
                tween: Tween(begin: 0.0, end: displayMedium!.fontSize),
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeOut,
                builder: (context, child, value) {
                  return Text(
                    date,
                    style: displayLarge!.copyWith(fontSize: value),
                    textAlign: TextAlign.center,
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.02,
              )
            ],
            Text(
              name,
              style: displayMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      onTap: () {
        datePressed.value = !datePressed.value;
      },
    );
  }
}
