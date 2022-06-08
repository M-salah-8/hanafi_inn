import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hanafi_inn/application/country/country_list_bloc.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';
import 'package:hanafi_inn/presentation/core/custom_button2.dart';
import 'package:hanafi_inn/presentation/routes/router.gr.dart';

class SplashPage extends HookWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFailure = useState(false);
    // TODO move to appwidget
    BlocProvider.of<CountryListBloc>(context)
        .add(const CountryListEvent.getList());
    return BlocListener<CountryListBloc, CountryListState>(
      listener: (context, state) {
        state.mapOrNull(loadSuccess: (e) {
          context.router.replace(SearchRoute(countryList: e.countries));
        }, loadFailure: (e) {
          isFailure.value = true;
        });
      },
      child: Stack(alignment: Alignment.center, children: [
        if (!isFailure.value)
          const SpinKitThreeBounce(
            color: kPrimaryColor,
          ),
        if (isFailure.value)
          NetworkError(
            isFailure: isFailure,
          )
      ]),
    );
  }
}

class NetworkError extends StatelessWidget {
  const NetworkError({Key? key, required this.isFailure}) : super(key: key);
  final ValueNotifier<bool> isFailure;
  @override
  Widget build(BuildContext context) {
    final displayMedium = Theme.of(context).textTheme.displayMedium;
    final displaySmall = Theme.of(context).textTheme.displaySmall;
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No internet connection',
          style: displayMedium,
        ),
        SizedBox(
          height: size.height * 0.2,
        ),
        CustomButton2(
            function: () {
              BlocProvider.of<CountryListBloc>(context)
                  .add(const CountryListEvent.getList());
            },
            child: Text(
              'Reload',
              style: displaySmall,
            ))
      ],
    );
  }
}
