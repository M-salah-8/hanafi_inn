import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';
import 'package:hanafi_inn/presentation/core/custom_button.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';
import 'package:hanafi_inn/presentation/search/widgets/country_search.dart';

class CountrySearchButton extends StatelessWidget {
  const CountrySearchButton({
    Key? key,
    required this.countryList,
    required this.currentCountry,
    required this.titleSmall,
  }) : super(key: key);

  final List<CountryPrimitive> countryList;
  final ValueNotifier<CountryPrimitive> currentCountry;
  final TextStyle? titleSmall;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        function: () {
          showSearch(
              context: context,
              delegate: CountrySearch(
                  countryList: countryList, currentCountry: currentCountry));
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
        ));
  }
}
