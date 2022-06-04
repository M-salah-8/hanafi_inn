import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';

class CustomCard extends HookWidget {
  const CustomCard({required this.child, Key? key, this.function})
      : super(key: key);
  final Function? function;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final padding = useState(false);
    return GestureDetector(
      child: AnimatedContainer(
          padding: padding.value
              ? const EdgeInsets.all(20)
              : const EdgeInsets.all(10),
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            boxShadow: const [
              // BoxShadow(
              //     color: Color.fromARGB(255, 84, 85, 84),
              //     offset: Offset(0, 1),
              //     spreadRadius: 1,
              //     blurRadius: 15),
            ],
            borderRadius: const BorderRadius.all(Radius.elliptical(4, 4)),
            border: Border.all(width: 3, color: kPrimaryColor),
            color: kPrimaryColor,
            // gradient: const LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [
            //       Color.fromARGB(255, 185, 224, 187),
            //       Color.fromARGB(255, 248, 248, 248),
            //       Color.fromARGB(255, 248, 248, 248),
            //     ])
          ),
          child: child),
      onTap: () {
        padding.value = !padding.value;
      },
    );
  }
}
