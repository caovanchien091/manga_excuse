part of '../launch_screen.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  LaunchBloc() : super(LaunchState()) {
    on<LaunchInitEvent>(_initHandler);
  }

  Future<void> _initHandler(LaunchInitEvent event, Emitter emit) async {
    await _process();

    emit(LaunchHomeState());
  }

  Future<void> _process() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }
}
