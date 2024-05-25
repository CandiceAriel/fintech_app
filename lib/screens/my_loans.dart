import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/rounded_container.dart';
import 'package:flutter/material.dart';

class MyLoansScreen extends StatefulWidget {
  
  const MyLoansScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const MyLoansScreen(),
        isShowLeading: false,
        showAppBar: false,
        isBodyScroll: true,
      )
    );
  }

  @override
  State<MyLoansScreen> createState() => _MyLoansScreenState();
}

class _MyLoansScreenState extends State<MyLoansScreen> {
  // late final AuthService _authenticationRepository;
  // late final UserRepository _userRepository;

  @override
  void initState() {
    super.initState();
    // _authenticationRepository = AuthService();
    // _userRepository = UserRepository();
  }

  @override
  void dispose() {
    //_authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //    create: (context) {
    //         return LogInBloc(
    //           authRepo:
    //               RepositoryProvider.of<AuthService>(context),
    //         );
    //       },
    //   child: BlocListener<AuthenticationBloc, AuthenticationState>(
    //     listener: (context, state) {
    //       switch (state.status) {
    //         case AuthenticationStatus.authenticated:
    //           navigatorKey.currentState?.pushNamed('/');
    //         case AuthenticationStatus.unauthenticated:
    //           navigatorKey.currentState?.pushNamed('/login');
    //         case AuthenticationStatus.unknown:
    //           break;
    //       }
    //     },
    //     child: HomeView(),
    //   )
    // );
    return const MyLoansView();
  }
}

class MyLoansView extends StatelessWidget {
  const MyLoansView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'My Loans',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000),
                ),
                textAlign:TextAlign.left
              ),
            ),
            ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      RoundedContainer(
                        number: index.toString(),
                        status: 'Pending', 
                        text: '\$ 10,000', 
                        btnTxt: 'Details', 
                        isBlack: true, 
                        isPending: true, 
                        isMyLoan: true, 
                        withBg: true 
                      ),
                      
                    ],
                  );
                  
                }
              ),
          ],
        ),
    );
  }
}