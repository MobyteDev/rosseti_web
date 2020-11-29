part of 'stats_bloc_bloc.dart';

@immutable
abstract class StatsBlocState {}

class StatsBlocInitial extends StatsBlocState {}

class LoadedSuccecful extends StatsBlocState {
  Registry registry;
  LoadedSuccecful(registry);
}
