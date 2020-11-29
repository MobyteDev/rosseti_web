import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rosseti_web/helpers/rest_manager.dart';
import 'package:rosseti_web/models/registry.dart';

part 'stats_bloc_event.dart';
part 'stats_bloc_state.dart';

class StatsBlocBloc extends Bloc<StatsBlocEvent, StatsBlocState> {
  StatsBlocBloc() : super(StatsBlocInitial());

  @override
  Stream<StatsBlocState> mapEventToState(
    StatsBlocEvent event,
  ) async* {
    if (event is DownloadData) {
      await RestManager.auth();
      Registry result = await RestManager.getRegistry();
      print(result.statements.length);
      yield LoadedSuccecful(result);
    }
  }
}
