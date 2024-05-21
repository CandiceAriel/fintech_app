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
      this.actText = '',
      this.toRoute = '',
      this.isShowLeading = false,
      this.isShowAction = false,
      this.isBodyScroll = true,
      this.disableExpiryCheck = false,
      this.isFullWidth = false,
      this.showAppBar = true,
      this.hasBg=true})
      : super(key: key);

  Widget bodyWidget;
  String title;
  String actText;
  String toRoute;
  bool showAppBar;
  bool isShowLeading;
  bool isShowAction;
  bool isBodyScroll;
  bool disableExpiryCheck;
  bool isFullWidth;
  bool hasBg;
  bool isNewMessage = false;

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
            Container(
            child: widget.bodyWidget),
        ]
      )
    );

    if(widget.showAppBar){
      return Scaffold(
        appBar: _createAppBar(
          context, widget.isShowLeading, widget.actText, widget.toRoute),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: SafeArea(
              child: widget.isBodyScroll
              ? SingleChildScrollView(
                child: widget.isFullWidth ||
                  MediaQuery.of(context).size.width <
                  ScreenConstants.tabWidth
                ? widget.bodyWidget
                : tabWidget
              )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: widget.isFullWidth ||
                    MediaQuery.of(context).size.width <
                    ScreenConstants.tabWidth
                  ? widget.bodyWidget
                  : tabWidget
              )
            ),
          )
        )
      );
    } else {
      return Scaffold(
        body: SafeArea(
                child:  widget.isBodyScroll
                ? SingleChildScrollView(
                  child: widget.isFullWidth ||
                    MediaQuery.of(context).size.width <
                    ScreenConstants.tabWidth
                  ? widget.bodyWidget
                  : tabWidget
                )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: widget.isFullWidth ||
                      MediaQuery.of(context).size.width <
                      ScreenConstants.tabWidth
                    ? widget.bodyWidget
                    : tabWidget
                )
              )
             
            
          
        );
    }
  }
}

AppBar _createAppBar(context, isShowLeading, actText, toRoute) {
  return AppBar(
    centerTitle: true,
    leading: Builder(builder: (BuildContext context) {
      return isShowLeading
          ? GestureDetector(
              child: SvgPicture.asset('assets/images/desktop-icon.svg',
                  height: 21, width: 28, fit: BoxFit.scaleDown))
          : IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              icon: const Icon(Icons.chevron_left),
            );
    }),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/${toRoute}');
          // switch (actText){
          //   case 'Sign Up' :
          //     Navigator.of(context).pushNamed('/signup');
          //   break;
          //    case 'Sign Up' :
          //     Navigator.of(context).pushNamed('/signup');
          //   break;
          // }
        },
        child: Text(
          actText,
          style: const TextStyle(color: Color(0xFF216EFB)),
        ),
      ),
    ],
  );
}
