import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_breakingbad/buisness_logic/bloc/characters_bloc.dart';
import 'package:flutter_bloc_breakingbad/data/repository/characters_repository.dart';
import 'package:flutter_bloc_breakingbad/data/web_services/web_services.dart';
import '../constants/strings.dart';
import '../presentation/screens/character_screens.dart';
import '../presentation/screens/characters_details.dart';

class AppRoute {
  late CharactersRepository charactersRepository;
  late CharactersBloc charactersBloc;

  AppRoute() {
    charactersRepository = CharactersRepository(CharacterWebServices());
    charactersBloc = CharactersBloc(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return (MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => charactersBloc,
                  child: const CharactersScreen(),
                )));
      case charactersDetails:
        return (MaterialPageRoute(
            builder: (_) => const CharactersDetailsScreen()));
    }
    return null;
  }
}
