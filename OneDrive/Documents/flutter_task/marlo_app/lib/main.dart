import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/bloc/invite_bloc.dart';
import 'package:marlo_app/app/features/global/presentation/bloc/global_bloc.dart';
import 'package:marlo_app/app/features/global/presentation/global_screen.dart';
import 'package:marlo_app/app/features/home/bloc/home_bloc.dart';
import 'package:marlo_app/app/features/login/presentation/provider/login_notifier.dart';
import 'package:marlo_app/app/utils/app_theme/app_themes.dart';
import 'package:marlo_app/app/utils/important_files.dart';
import 'package:marlo_app/app/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'app/features/contract/presentation/screen_one/bloc/contract_bloc_bloc.dart';
import 'app/utils/app_theme/custom_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const CustomTheme(
      initialThemeKey: MyThemeKeys.LIGHT,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginNotifier(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GlobalBloc(),
          ),
          BlocProvider(
            create: (context) => HomeBloc(),
          ),
          BlocProvider(
            create: (context) => ContractBloc(),
          ),
          BlocProvider(
            create: (context) => InviteBloc(),
          ),
        ],
        child: MaterialApp(
          scaffoldMessengerKey: ScafoldKey.rootScaffoldMessengerKey,
          onGenerateRoute: AppRoute.generateRoute,
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.of(context),
          home: GlobalScreen(),
        ),
      ),
    );
  }
}
