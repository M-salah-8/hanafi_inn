import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/core/custom_card.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';

class HolidaysList extends StatelessWidget {
  const HolidaysList({Key? key, required this.holidays}) : super(key: key);
  final List<HolidayPrimitive> holidays;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final displayMedium = Theme.of(context).textTheme.displayMedium;
    return ListView.builder(
      itemCount: holidays.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.01),
          child: CustomCard(
            child: Text(
              holidays[index].name,
              style: displayMedium,
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
