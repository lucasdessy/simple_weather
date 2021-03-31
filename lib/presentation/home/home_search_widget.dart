import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/constants.dart';
import 'package:simple_weather/logic/cubit/weather_cubit.dart';

class HomeSearchWidget extends StatefulWidget {
  final String? initialText;

  const HomeSearchWidget({Key? key, this.initialText}) : super(key: key);
  @override
  _HomeSearchWidgetState createState() => _HomeSearchWidgetState();
}

class _HomeSearchWidgetState extends State<HomeSearchWidget> {
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    controller.text = widget.initialText ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Builder(
          builder: (context) => TypeAheadField<_ItemSuggestion>(
            textFieldConfiguration: TextFieldConfiguration(
              decoration: InputDecoration(
                labelText: 'Digite uma cidade...',
                border: OutlineInputBorder(),
              ),
              controller: controller,
            ),
            itemBuilder: (context, suggestion) => ListTile(
              title: Text('${suggestion.name}'),
            ),
            onSuggestionSelected: (suggestion) {
              context
                  .read<WeatherCubit>()
                  .reloadWeather(suggestion.code, suggestion.name);
            },
            suggestionsCallback: (pattern) {
              final suggestionList = <_ItemSuggestion>[];
              var keys = Constants.citiesMap.keys
                  .where(
                    (element) =>
                        removeDiacritics(element.toUpperCase()).contains(
                      removeDiacritics(
                        pattern.toUpperCase(),
                      ),
                    ),
                  )
                  .toList();
              if (keys.length > 10) {
                keys = keys.sublist(0, 10);
              }

              keys.forEach((key) {
                suggestionList
                    .add(_ItemSuggestion('${Constants.citiesMap[key]}', key));
              });

              return suggestionList;
            },
          ),
        ),
      ],
    );
  }
}

class _ItemSuggestion {
  final String code;
  final String name;

  _ItemSuggestion(this.code, this.name);

  @override
  String toString() => '_ItemSuggestion(code: $code, name: $name)';
}
