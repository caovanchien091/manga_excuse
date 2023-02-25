part of '../launch_screen.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  LaunchBloc() : super(LaunchState()) {
    on<LaunchInitEvent>(_initHandler);
  }

  Future<void> _initHandler(LaunchInitEvent event, Emitter emit) async {
    emit(LaunchSingInState());
  }
}
