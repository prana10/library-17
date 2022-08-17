import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library17/presentations/common/config/app_config.dart';
import 'presentations/cubit/page_cubit.dart';

class LibraryApp extends StatelessWidget {
  const LibraryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        routes: AppConfig.routes,

        //  debug mode
        debugShowCheckedModeBanner: false,
        title: AppConfig.appName,
      ),
    );
  }
}
