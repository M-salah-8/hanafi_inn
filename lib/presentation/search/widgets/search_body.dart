import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanafi_inn/application/holiday/holiday_list_bloc.dart';
import 'package:hanafi_inn/presentation/core/flush_bar.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';
import 'package:hanafi_inn/presentation/routes/router.gr.dart';
import 'package:hanafi_inn/presentation/search/widgets/country_search_button.dart';
import 'package:hanafi_inn/presentation/search/widgets/search_button.dart';

class SearchBody extends HookWidget {
  const SearchBody({Key? key, required this.countryList}) : super(key: key);
  final List<CountryPrimitive> countryList;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final titleSmall = Theme.of(context).textTheme.titleSmall;
    final currentCountry =
        useState(const CountryPrimitive(name: 'Sudan', code: 'SD'));

    /// control search animation
    final toggleControlHook = useState(false);
    return BlocListener<HolidayListBloc, HolidayListState>(
        listener: (context, state) {
          state.mapOrNull(
            loadSuccess: (e) {
              toggleControlHook.value = false;
              context.router.push(HolidaysRoute(holidays: e.holidays));
            },
            loadFailure: (e) {
              toggleControlHook.value = false;
              flushBar(context, e.failure, InstructionOrError.error);
            },
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // country search
            CountrySearchButton(
                countryList: countryList,
                currentCountry: currentCountry,
                titleSmall: titleSmall),
            SizedBox(
              height: size.height * 0.1,
            ),
            SearchButton(
                toggleControlHook: toggleControlHook,
                currentCountry: currentCountry,
                size: size),
          ],
        ));
  }
}
