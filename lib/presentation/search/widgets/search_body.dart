import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanafi_inn/application/holiday/holiday_list_bloc.dart';
import 'package:hanafi_inn/presentation/routes/router.gr.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String code = 'empty';
    search(BuildContext context) {
      BlocProvider.of<HolidayListBloc>(context)
          .add(HolidayListEvent.getList(code));
    }

    return BlocListener<HolidayListBloc, HolidayListState>(
      listener: (context, state) {
        state.maybeMap(loadSuccess: (e) {
          context.router.push(const HolidaysRoute());
        }, loadFailure: (e) {
          Container();
        }, orElse: () {
          print('=================================5');
        });
      },
      child: Center(
        child: Column(
          children: [
            TextField(
              style: Theme.of(context).textTheme.displayMedium,
              decoration: const InputDecoration(
                  hintText: 'search by email', counterText: ''),
              onChanged: (value) {
                code = value;
              },
            ),
            IconButton(
              onPressed: () {
                search(context);
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
      ),
    );
  }
}
