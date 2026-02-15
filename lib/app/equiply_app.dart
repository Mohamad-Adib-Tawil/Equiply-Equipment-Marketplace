import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wolfera/core/di/service_locator.dart';
import 'package:wolfera/core/presentation/cubit/app_shell_cubit.dart';
import 'package:wolfera/core/routing/equiply_router.dart';
import 'package:wolfera/core/theme/equiply_theme.dart';

class EquiplyApp extends StatelessWidget {
  const EquiplyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final EquiplyRouter appRouter = sl<EquiplyRouter>();

    return BlocProvider<AppShellCubit>(
      create: (_) => sl<AppShellCubit>(),
      child: MaterialApp.router(
        title: 'Equiply',
        debugShowCheckedModeBanner: false,
        theme: EquiplyTheme.light(),
        routerConfig: appRouter.router,
      ),
    );
  }
}
