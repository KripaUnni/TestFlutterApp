import 'package:flutter/material.dart';
import 'package:flutter_application/ui/dashboard_view.dart';
import 'dart:async';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  
  @override
  void initState() {
    super.initState();
    _checkSession();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  child: Center( 
                  child: SvgPicture.asset( 
                    'assets/logo1.svg', 
                    semanticsLabel: 'My SVG Image', 
                    height: 100, 
                    width: 70, 
                  ), 
                ).animate()
              .fadeIn(duration: 3000.ms)
              .then(delay: 1200.ms)
              .slideX(end: -0.2, duration: 2000.ms)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  
  void _checkSession() async {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  const DashboardView()));
    });
  }
}