import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/holidays/widgets/holidays_list.dart';

class HolidaysPage extends StatelessWidget {
  const HolidaysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HolidaysList(),
    );
  }
}
