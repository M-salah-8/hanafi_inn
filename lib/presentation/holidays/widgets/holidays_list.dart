import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/holidays/widgets/holiday_card.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';

class HolidaysList extends StatelessWidget {
  const HolidaysList({Key? key, required this.holidays}) : super(key: key);
  final List<HolidayPrimitive> holidays;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: holidays.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.01),
          child: HolidayCard(
            date: holidays[index].date.substring(5),
            name: holidays[index].name,
          ),
        );
      },
    );
  }
}
