import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/holidays/widgets/holidays_list.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';

class HolidaysPage extends StatelessWidget {
  const HolidaysPage({Key? key, required this.holidays}) : super(key: key);

  final List<HolidayPrimitive> holidays;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HolidaysList(holidays: holidays),
    );
  }
}
