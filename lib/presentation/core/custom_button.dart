import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';

class CustomButton extends HookWidget {
  final Function? function;
  final Widget child;
  const CustomButton({required this.function, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPressed = useState(false);
    return GestureDetector(
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: const BorderRadius.all(Radius.elliptical(8, 8)),
            border: Border.all(width: 3, color: kPrimaryColor),
          ),
          child: Padding(padding: const EdgeInsets.all(10), child: child)),
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
