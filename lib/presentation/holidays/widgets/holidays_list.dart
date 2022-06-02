import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanafi_inn/application/holiday/holiday_list_bloc.dart';

class HolidaysList extends StatelessWidget {
  const HolidaysList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HolidayListBloc, HolidayListState>(
      builder: (context, state) {
        return state.maybeMap(loadSuccess: (e) {
          return ListView.builder(
            itemCount: e.holidays.length,
            itemBuilder: (context, index) {
              return Card(
                child: Text(e.holidays[index].name),
              );
            },
          );
        }, orElse: () {
          return Container();
        });
      },
    );
  }
}
