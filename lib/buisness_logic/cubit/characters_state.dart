part of '../bloc/characters_bloc.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharacterLoaded extends CharactersState {
  late final List<dynamic> characters;

  CharacterLoaded(this.characters);
}
