import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanafi_inn/application/holiday/holiday_list_bloc.dart';
import 'package:hanafi_inn/presentation/core/animation.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';
import 'package:hanafi_inn/presentation/core/custom_button.dart';
import 'package:hanafi_inn/presentation/core/custom_button2.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';
import 'package:hanafi_inn/presentation/routes/router.gr.dart';
import 'package:hanafi_inn/presentation/search/widgets/country_search.dart';

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
              Container();
            },
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // country search
              CustomButton(
                  function: () {
                    showSearch(
                        context: context,
                        delegate: CountrySearch(
                            countryList: countryList,
                            currentCountry: currentCountry));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        currentCountry.value.name,
                        style: titleSmall,
                      ),
                      const Icon(
                        Icons.arrow_downward,
                        color: kPrimaryColor,
                      ),
                    ],
                  )),
              SizedBox(
                height: size.height * 0.1,
              ),
              CustomButton2(
                  function: () {
                    toggleControlHook.value = !toggleControlHook.value;
                    BlocProvider.of<HolidayListBloc>(context).add(
                        HolidayListEvent.getList(currentCountry.value.code));
                  },
                  child: SizedBox(
                      width: size.width * 0.15,
                      height: size.width * 0.15,
                      child: SearchAnimation(Icons.search, toggleControlHook))),
            ],
          ),
        ));
  }
}
