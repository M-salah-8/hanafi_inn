import 'package:flutter/material.dart';
import 'package:hanafi_inn/presentation/misc/presentation_classes.dart';

class CountrySearch extends SearchDelegate {
  CountrySearch({required this.countryList, required this.currentCountry});
  final List<CountryPrimitive> countryList;
  final ValueNotifier<CountryPrimitive> currentCountry;

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              query = '';
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // only suggestions containing letters from the search appear
    List<CountryPrimitive> results = countryList.where((element) {
      final result = element.name.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    // suggestions list
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(
            results[index].name,
            style: Theme.of(context).textTheme.displaySmall,
          ),

          // change choosen value to be current country
          onTap: () {
            currentCountry.value = results[index];
            close(context, null);
          },
        );
      },
    );
  }
}
