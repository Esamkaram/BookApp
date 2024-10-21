import 'package:bookappnewstar/core/cach/cach_helper.dart';
import 'package:bookappnewstar/core/network/dio_hleper.dart';
import 'package:bookappnewstar/core/observer.dart';
import 'package:bookappnewstar/core/style/theme.dart';
import 'package:bookappnewstar/features/home/ui/home_screen.dart';
import 'package:bookappnewstar/features/login/ui/login_screen.dart';
import 'package:bookappnewstar/features/onbording/cubit/onbording_cubit.dart';
import 'package:bookappnewstar/features/onbording/onbording_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  await DioHelper.init();
  await CacheHelper.init();
  // await CacheHelper.removeDate(key: ChachKey.studentList);
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
        path: 'asset/lang', // <-- change the path of the translation files
        fallbackLocale: const Locale('ar', 'EG'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: BlocProvider(
        create: (context) => OnbordingCubit(),
        child: (CacheHelper.getDate(key: 'inBoarding'))
            ? const LoginScreen()
            : const OnbordingScreen(),
      ),
    );
  }
}
