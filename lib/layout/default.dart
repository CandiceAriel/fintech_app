import 'package:fintech_app/size_config.dart';
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
      this.isShowLeading = true,
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
    SizeConfig().init(context);
    Widget tabWidget = Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: widget.bodyWidget),
        ]
      )
    );
    if (widget.showAppBar == true) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        
        appBar: _createAppBar(context, widget.isShowLeading, 'Supreme'),
        body: SafeArea(
          // child: widget.withNavbar
          //     //if using Navbar//
          //   ? Stack(
          //     children: [
          //       widget.isBodyScroll
          //       ? SingleChildScrollView(
          //         child: widget.isFullWidth || MediaQuery.of(context).size.width < ScreenConstants.tabWidth
          //         ? widget.bodyWidget
          //         : tabWidget
          //       )
          //       : Container(
          //         height: MediaQuery.of(context).size.height ,
          //         width: MediaQuery.of(context).size.width,
          //         child: widget.bodyWidget
          //       ),
          //       const Positioned(
          //         top: 776,
          //         child: SizedBox(
          //           height: 66,
          //           child:  CustomBottomNavbar()
          //         )
          //       )
                  
          //     ]
          //   )
          //   : 
            child: widget.isBodyScroll
              ? SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: widget.isFullWidth ||
                  MediaQuery.of(context).size.width <
                  ScreenConstants.tabWidth
                ? widget.bodyWidget
                : tabWidget
              )
              : Container(
                height: (SizeConfig().safeBlockVertical * 10) - kToolbarHeight ,
                width: (SizeConfig().safeBlockHorizontal * 10),
                clipBehavior: Clip.none,
                child: widget.bodyWidget
              ),
              
          )
        
      );
    } else {
      //No Appbar//
      return Scaffold(
        body: SafeArea(
          //  child: widget.withNavbar
          //   ? Container(
          //     height: MediaQuery.of(context).size.height,
          //     child: Stack(
          //       children: [
          //         widget.isBodyScroll
          //         ? SingleChildScrollView(
          //           child: widget.isFullWidth ||
          //             MediaQuery.of(context).size.width <
          //             ScreenConstants.tabWidth
          //           ? widget.bodyWidget
          //           : tabWidget)
          //         : Container(
          //           height: MediaQuery.of(context).size.height,
          //           width: MediaQuery.of(context).size.width,
          //           child: widget.bodyWidget
          //         ),
          //         const Positioned(
          //           bottom: 10,
          //           right: 0,
          //           left: 0,
          //           child: SizedBox(
          //             height: 66,
          //             child:  CustomBottomNavbar()
          //           )
                    
          //         )
          //       ]
          //     )
          //   )
            //Without Navbar//
            child: widget.isBodyScroll
            ? SingleChildScrollView(
              child: widget.isFullWidth || MediaQuery.of(context).size.width < ScreenConstants.tabWidth
                ? widget.bodyWidget
                : tabWidget
            )
            : Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: widget.bodyWidget
            ),
        )
      );
    }
  }
}

// class _AppBar extends AppBar {
//   @override
//   Widget build(BuildContext context) {
//     return  _createAppBar(context, isShowLeading, title);
//   }
// }

AppBar _createAppBar(context, isShowLeading, title) {
  return AppBar(
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg-light.png"),
        ),
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 25,
        height: 1.5
      ),
    ),
    centerTitle: true,
    backgroundColor: const Color(0xFF0082FF),
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
        : GestureDetector(
          child: SvgPicture.asset(
            'assets/images/chevron-left.svg',
            height: 21, 
            width: 15, 
            fit: BoxFit.scaleDown
          ),
          onTap: () => navigator.pop(),
        );
    }),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16.0),
        child: GestureDetector(   
          child: SvgPicture.asset(
            'assets/images/notification.svg',
            height: 21, 
            width: 15, 
            fit: BoxFit.fill
          )
        )
      )
    ],
  );
}
