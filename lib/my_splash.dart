import 'package:flutter/material.dart';
import 'package:one_piece_bounty/homescreen.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacityController;
  late final Animation<double> _scaleController;
  late AnimationController _wipeController;
  late final Animation<double> _wipeOpacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );

    _opacityController = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInCubic));

    _scaleController = Tween<double>(begin: 0.8, end: 1.0).animate(_controller);

    _controller.forward();

    _wipeController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _wipeOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _wipeController, curve: Curves.easeOut));

    Future.delayed(Duration(seconds: 3), () async {
      if (!mounted) return;
      await _wipeController.forward();
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) => Homescreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _wipeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          FadeTransition(
            opacity: _opacityController,
            child: ScaleTransition(
              scale: _scaleController,
              child: SizedBox.expand(
                child: Image.asset("assets/coversplash.png", fit: BoxFit.cover),
              ),
            ),
          ),
          FadeTransition(
            opacity: _wipeOpacity,
            child: Container(color: const Color(0xFF221B1B)),
          ),
        ],
      ),
    );
  }
}
