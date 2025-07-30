import 'package:flutter/material.dart';
import 'package:one_piece_bounty/utils/mq.dart';

class Worstg extends StatefulWidget {
  const Worstg({super.key});

  @override
  State<Worstg> createState() => _WorstgState();
}

class _WorstgState extends State<Worstg> {
  @override
  Widget build(BuildContext context) {
    final List<String> onePiece = [
      "https://i.pinimg.com/1200x/f8/7d/d2/f87dd20f0ec63f9f1f83d04ec2843d3e.jpg",
      "https://i.pinimg.com/736x/da/d1/a2/dad1a20f32b776fffa0f4e33da403d40.jpg",
      "https://i.pinimg.com/736x/07/98/7c/07987cf6d8dc5eec78d654ed5780acba.jpg",
      "https://i.pinimg.com/736x/e6/4a/44/e64a44eb23d42b63a27d0ed1dd257c21.jpg",
      "https://i.pinimg.com/736x/27/62/1a/27621a80fb61fe813ebedc92df4a93a7.jpg",
      "https://i.pinimg.com/736x/cc/ba/0f/ccba0f07fe4b8dce352b94884781923c.jpg",
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF221B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF221B1B),
        foregroundColor: const Color(0xFFFADFCE),
        title: Text(
          "Worst Generation",
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
