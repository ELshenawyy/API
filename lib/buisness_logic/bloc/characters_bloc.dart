import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_breakingbad/data/models/characters.dart';
import 'package:meta/meta.dart';

import '../../data/repository/characters_repository.dart';


part '../cubit/characters_event.dart';

part '../cubit/characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersRepository charactersRepository;
   List<Results> myCharacters = [];

  CharactersBloc(this.charactersRepository) : super(CharactersInitial());

  List<Results> getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharacterLoaded(characters as List));
      myCharacters = characters as List<Characters>;
    });
    return myCharacters;
  }
}
