import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanafi_inn/application/country/country_list_bloc.dart';
import 'package:hanafi_inn/application/holiday/holiday_list_bloc.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';
import 'package:hanafi_inn/presentation/core/animation.dart';
import 'package:hanafi_inn/presentation/core/custom_button2.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    required this.toggleControlHook,
    required this.currentCountry,
    required this.size,
  }) : super(key: key);

  final ValueNotifier<bool> toggleControlHook;
  final ValueNotifier<CountryPrimitive> currentCountry;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomButton2(
        function: () {
          toggleControlHook.value = !toggleControlHook.value;
          BlocProvider.of<CountryListBloc>(context)
              .add(CountryListEvent.setCurrentCountry(currentCountry.value));
          BlocProvider.of<HolidayListBloc>(context)
              .add(HolidayListEvent.getList(currentCountry.value.code));
        },
        child: SizedBox(
            width: size.width * 0.15,
            height: size.width * 0.15,
            child: SearchAnimation(Icons.search, toggleControlHook)));
  }
}
