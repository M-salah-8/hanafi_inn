import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanafi_inn/application/country/country_list_bloc.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';
import 'package:hanafi_inn/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CountryListBloc>(context)
        .add(const CountryListEvent.getList());
    return BlocListener<CountryListBloc, CountryListState>(
      listener: (context, state) {
        state.mapOrNull(loadSuccess: (e) {
          context.router.replace(SearchRoute(countryList: e.countries));
        }, loadFailure: (e) {
          // return Container(color: Colors.,);
        });
      },
      child: Container(
        color: kPrimaryColor,
      ),
    );
  }
}
