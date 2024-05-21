// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech_app/bloc/authentication/authentication_bloc.dart';
import 'package:fintech_app/bloc/login/login_bloc.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/repositories/user.dart';
import 'package:fintech_app/services/auth_service.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

    static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const HomeScreen(),
        isShowLeading: true,
      )
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   late final AuthService _authenticationRepository;
  late final UserRepository _userRepository;

  
  @override
  void initState() {
    super.initState();
    _authenticationRepository = AuthService();
    _userRepository = UserRepository();
  }

  @override
  void dispose() {
    _authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (_) => AuthenticationBloc(
      //   authenticationRepository: _authenticationRepository,
      //   userRepository: _userRepository,
      // ),
       create: (context) {
            return LogInBloc(
              authRepo:
                  RepositoryProvider.of<AuthService>(context),
            );
          },
      child: HomeView(),
    );
    
  }
}

class HomeView extends StatelessWidget{
 @override
  Widget build(BuildContext context){
    final user = context.select((AuthenticationBloc bloc) => bloc.state.user);
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.status) {
              case AuthenticationStatus.authenticated:
               navigatorKey.currentState?.pushNamed('/');
              case AuthenticationStatus.unauthenticated:
                navigatorKey.currentState?.pushNamed('/login');
              case AuthenticationStatus.unknown:
                break;
            }
      },
      child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Builder(
                  builder: (context) {
                    final userEmail = user.id;
                    return Text('UserID: $userEmail');
                  },
                ),
                //Text('Welcome ${state.email.value}')
              ],
            ),
          ),
        ),
      );
  }

  //   return Scaffold(
  //         body: Center(
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: <Widget>[
  //               Builder(
  //                 builder: (context) {
  //                   final userEmail = context.select(
  //                     (LogInBloc bloc) => bloc.state.email,
  //                   );
  //                   return Text('UserID: $userEmail');
  //                 },
  //               ),
  //               Text('Welcome')
  //             ],
  //           ),
  //         ),
  //       );
  // }
}
