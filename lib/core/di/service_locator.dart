import 'package:get_it/get_it.dart';
import 'package:wolfera/core/presentation/cubit/app_shell_cubit.dart';
import 'package:wolfera/core/routing/equiply_router.dart';

final GetIt sl = GetIt.instance;

Future<void> configureDependencies() async {
  if (!sl.isRegistered<EquiplyRouter>()) {
    sl.registerLazySingleton<EquiplyRouter>(EquiplyRouter.new);
  }

  if (!sl.isRegistered<AppShellCubit>()) {
    sl.registerLazySingleton<AppShellCubit>(AppShellCubit.new);
  }
}
