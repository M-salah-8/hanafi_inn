import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';

class CustomButton2 extends HookWidget {
  final Function? function;
  final Widget child;
  const CustomButton2({required this.function, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPressed = useState(false);
    return GestureDetector(
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            boxShadow: !isPressed.value
                ? const [
                    BoxShadow(
                        color: kPrimaryColor,
                        offset: Offset(1, 0),
                        spreadRadius: 1,
                        blurRadius: 0),
                    BoxShadow(
                        color: kPrimaryColor,
                        offset: Offset(-1, 0),
                        spreadRadius: 1,
                        blurRadius: 0),
                  ]
                : null,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: child),
      onTap: () {
        if (function != null) {
          isPressed.value = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            isPressed.value = false;
          });
          Future.delayed(const Duration(milliseconds: 350), () {
            function!.call();
          });
        }
      },
    );
  }
}
