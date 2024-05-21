import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech_app/bloc/authentication/authentication_bloc.dart';
import 'package:fintech_app/bloc/signup/signup_bloc.dart';
import 'package:fintech_app/bloc/signup/signup_cubit.dart';
import 'package:fintech_app/repositories/user.dart';
import 'package:fintech_app/routes.dart';
import 'package:fintech_app/screens/home.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/screens/splash_screen.dart';
import 'package:fintech_app/services/auth_service.dart';
import 'package:fintech_app/theme.dart';
import 'package:fintech_app/constants.dart';


class App extends StatefulWidget {
  App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthService _authService;
  late final UserRepository _userRepository;

  @override
  void initState() {
    super.initState();
    _authService = AuthService();
    _userRepository = UserRepository();
  }

  @override
  void dispose() {
    _authService.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // return MultiRepositoryProvider(
    //   providers: [
    //     RepositoryProvider.value(
    //       value: _authService,
    //       child: BlocProvider(
    //         create: (_) => AuthenticationBloc(
    //           authenticationRepository: _authService,
    //           userRepository: _userRepository
    //         ),
    //         child: const AppView(),
    //       ),
    //     ),
        
    //   ],
    //   child: AppView(),
    // );
    return RepositoryProvider.value(
      value: _authService,
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
          authenticationRepository: _authService,
          userRepository: _userRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
    final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: _navigatorKey,
      // builder: (context, child) {
      //   return BlocListener<AuthenticationBloc, AuthenticationState>(
      //     listener: (context, state) {
      //       switch (state.status) {
      //         case AuthenticationStatus.authenticated:
      //           _navigator.pushAndRemoveUntil<void>(
      //             HomeScreen.route(),
      //             (route) => false,
      //           );
      //         case AuthenticationStatus.unauthenticated:
      //           _navigator.pushAndRemoveUntil<void>(
      //             LoginScreen.route(),
      //             (route) => false,
      //           );
      //         case AuthenticationStatus.unknown:
      //           break;
      //       }
      //     },
      //     child: child,
      //   );
      // },
      // onGenerateRoute: (_) => SplashScreen.route(),
      title: 'Sparrow App ',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      routes: routes,
      onGenerateRoute: (_) => SplashScreen.route(),
      initialRoute: '/login',
      
      home: HomeScreen(),
    );
  }
}