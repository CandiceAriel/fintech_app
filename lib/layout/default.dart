import 'package:fintech_app/widget/bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../constants.dart';

final String desktopicon = 'assets/desktop_icon.svg';

// ignore: must_be_immutable
class DefaultScaffold extends StatefulWidget {
  DefaultScaffold(
      {Key? key,
      required this.bodyWidget,
      this.title = '',
      this.toRoute = '',
      this.isShowLeading = false,
      this.isShowAction = false,
      this.isBodyScroll = true,
      this.disableExpiryCheck = false,
      this.isFullWidth = false,
      this.showAppBar = true,
      this.hasBg = true,
      this.withNavbar = true})
      : super(key: key);

  Widget bodyWidget;
  String title;
  String toRoute;
  bool showAppBar;
  bool isShowLeading;
  bool isShowAction;
  bool isBodyScroll;
  bool disableExpiryCheck;
  bool isFullWidth;
  bool hasBg;
  bool isNewMessage = false;
  bool withNavbar;

  @override
  State<DefaultScaffold> createState() => _DefaultWidgetState();
}

class _DefaultWidgetState extends State<DefaultScaffold> {
  @override
  Widget build(BuildContext context) {
    Widget tabWidget = Container(
        alignment: Alignment.center,
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: widget.bodyWidget),
            ]));
    if (widget.showAppBar == true) {
      return Scaffold(
        appBar: _createAppBar(context, true, 'Supreme'),
        body: SafeArea(
          child: 
          Column(
            children: [
              const _AppBar(),
              widget.withNavbar
              ? Stack(
                children: [
                  widget.isBodyScroll
                  ? SingleChildScrollView(
                      child: widget.isFullWidth ||
                              MediaQuery.of(context).size.width <
                                  ScreenConstants.tabWidth
                      ? widget.bodyWidget
                      : tabWidget)
                  : widget.bodyWidget,
                  const Positioned(
                    top: 776,
                    child: SizedBox(
                      height: 66,
                      child:  CustomBottomNavbar()
                    )
                   
                  )
                  
                ]
              )
              : widget.bodyWidget
            ],
          )
        )
      );
    } else {
      return Scaffold(
        body: SafeArea(
           child: widget.withNavbar
              ? Stack(
                children: [
                  widget.isBodyScroll
                  ? SingleChildScrollView(
                      child: widget.isFullWidth ||
                        MediaQuery.of(context).size.width <
                        ScreenConstants.tabWidth
                      ? widget.bodyWidget
                      : tabWidget)
                  : widget.bodyWidget,
                  const Positioned(
                    bottom: 10,
                    right: 0,
                    left: 0,
                    child: SizedBox(
                      height: 66,
                      child:  CustomBottomNavbar()
                    )
                   
                  )
                ]
              )
              : widget.bodyWidget
        )
      );
    }
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      height: 76,
      decoration: const BoxDecoration(
        color: Color(0xFF0082FF),
        image: DecorationImage(
          image: AssetImage("assets/images/bg-light.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
              child: SvgPicture.asset('assets/images/hamburger-menu.svg',
                  height: 21, width: 15, fit: BoxFit.scaleDown))
        ],
      ),
    );
  }
}

AppBar _createAppBar(context, isShowLeading, title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    leading: Builder(builder: (BuildContext context) {
      return isShowLeading
        ? GestureDetector(
          child: SvgPicture.asset(
            'assets/images/hamburger-menu.svg',
            height: 21, 
            width: 15, 
            fit: BoxFit.scaleDown
          )
        )
        : IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            icon: const Icon(Icons.chevron_left),
          );
    }),
    actions: [
      GestureDetector(   
        child: SvgPicture.asset(
          'assets/images/notification.svg',
          height: 21, 
          width: 15, 
          fit: BoxFit.scaleDown
        )
      )
    ],
  );
}
