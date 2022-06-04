import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/core/background.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';

import 'widgets/search_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key, required this.countryList}) : super(key: key);
  final List<CountryPrimitive> countryList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(child: SearchBody(countryList: countryList)),
    );
  }
}
