import 'package:flutter/material.dart';
import 'package:one_piece_bounty/utils/mq.dart';

class Strawhat extends StatefulWidget {
  const Strawhat({super.key});

  @override
  State<Strawhat> createState() => _StrawhatState();
}

class _StrawhatState extends State<Strawhat> {
  @override
  Widget build(BuildContext context) {
    final List<String> onePiece = [
      "https://i.pinimg.com/736x/17/94/25/179425d39fcf5add055a45ab705c520c.jpg",
      "https://i.pinimg.com/736x/c5/53/30/c553303eda1e135d4e4fb5a9fa6f7833.jpg",
      "https://i.pinimg.com/736x/0d/44/51/0d445187112397c74c033511263e6e6c.jpg",
      "https://i.pinimg.com/736x/eb/35/fe/eb35fea92265735e76eb1fc83b18fe7c.jpg",
      "https://i.pinimg.com/1200x/90/04/85/900485b0d8a27a11a97ff12a82c0f6e5.jpg",
      "https://i.pinimg.com/1200x/03/99/91/0399918e78831288a0b2937868f6a982.jpg",
      "https://i.pinimg.com/736x/49/21/8d/49218d1d169c358d86057a9fc1d9fb76.jpg",
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF221B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF221B1B),
        foregroundColor: const Color(0xFFFADFCE),
        title: Text(
          "Strawhat Crew",
          style: TextStyle(
            color: const Color(0xFFFADFCE),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MQ.width(context) * 0.05),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(MQ.width(context) * 0.05),
          itemCount: onePiece.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MQ.height(context) * 0.05,
              ),
              child: Container(
                padding: EdgeInsets.all(MQ.width(context) * 0.06),
                height: MQ.height(context) * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF69634F),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 167, 156, 130),
                      offset: Offset(0, 4),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(255, 167, 156, 130),
                      offset: Offset(0, -4),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20),
                    child: Image.network(
                      onePiece[index],
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
