import 'package:flutter/material.dart';
import 'package:one_piece_bounty/utils/mq.dart';

class Blackbeard extends StatefulWidget {
  const Blackbeard({super.key});

  @override
  State<Blackbeard> createState() => _BlackbeardState();
}

class _BlackbeardState extends State<Blackbeard> {
  @override
  Widget build(BuildContext context) {
    final List<String> onePiece = [
      "https://i.pinimg.com/736x/4e/25/30/4e2530b3c66577df95ac3f886e0654f0.jpg",
      "https://i.pinimg.com/736x/86/c5/8c/86c58c8f0ada671ee88943bf0c618ce1.jpg",
      "https://i.pinimg.com/736x/8d/8e/3d/8d8e3d6cca0b09520a75c33fc3128d45.jpg",
      "https://i.pinimg.com/736x/e9/f7/73/e9f77374684215fb29f4bbc7f76b2554.jpg",
      "https://i.pinimg.com/736x/a9/3e/da/a93edaa3e1c195422393b6b171225c41.jpg",
      "https://i.pinimg.com/736x/d3/c9/44/d3c94494d18d790af8bac84064f336b9.jpg",
      "https://i.pinimg.com/736x/d2/2b/68/d22b68e817f8f8273015276b2277c424.jpg",
      "https://i.pinimg.com/736x/be/d1/77/bed1773a444ef49d10cd7b94fb8d77ad.jpg",
      "https://i.pinimg.com/736x/c6/e3/01/c6e301952a5b989eda6922b9ce2ecfaf.jpg",
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF221B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF221B1B),
        foregroundColor: const Color(0xFFFADFCE),
        title: Text(
          "Kurohige Crew",
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
