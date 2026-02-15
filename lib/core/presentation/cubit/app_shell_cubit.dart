import 'package:flutter_bloc/flutter_bloc.dart';

/// Centralized shell state. Keeping navigation state in Cubit avoids ad-hoc
/// state inside widgets and keeps the app shell testable.
class AppShellCubit extends Cubit<int> {
  AppShellCubit() : super(0);

  void setIndex(int index) {
    if (index == state) return;
    emit(index);
  }
}
