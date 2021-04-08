import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_weather/application/search/search_bloc.dart';
import 'package:simple_weather/presentation/drawer/app_drawer.dart';

class AddCityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Fechar',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocProvider(
          create: (_) => SearchBloc(),
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Cidade', hintText: 'Ex: Bauru'),
                    onChanged: (text) => context
                        .read<SearchBloc>()
                        .add(SearchEvent.cityNameChanged(cityName: text)),
                  ),
                  if (state.loading)
                    const Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  else if (state.results.isEmpty && state.showErrorMessages)
                    const ListTile(
                      title: Text(
                        'Nenhum Resultado Encontrado',
                        textAlign: TextAlign.center,
                      ),
                    )
                  else
                    ListView.builder(
                      itemCount: state.results.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final result = state.results[index];
                        return ListTile(
                          title: Text(result.name),
                          onTap: () {},
                        );
                      },
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
