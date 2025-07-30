import 'package:flutter/material.dart';
import 'package:one_piece_bounty/utils/mq.dart';

class Redhair extends StatefulWidget {
  const Redhair({super.key});

  @override
  State<Redhair> createState() => _RedhairState();
}

class _RedhairState extends State<Redhair> {
  @override
  Widget build(BuildContext context) {
    final List<String> onePiece = [
      "https://i.pinimg.com/1200x/03/35/08/0335084b4e97ad48ec4cb56f9b6ed89b.jpg",
      "https://i.pinimg.com/736x/4a/e4/77/4ae4771d0c99a9184031d8c19e399bf0.jpg",
      "https://i.pinimg.com/736x/80/53/4a/80534a955dad166c421feeab68319e61.jpg",
      "https://i.pinimg.com/736x/b3/81/16/b38116a6b2a043a8ed0b6bc0204eb872.jpg",
      "https://i.pinimg.com/736x/b5/88/22/b588221ebe7d1010fd97dd86d5c2ef94.jpg",
      "https://i.pinimg.com/736x/90/4c/35/904c354609084037f79302a4abc99379.jpg",
      "https://i.pinimg.com/736x/4e/64/8e/4e648ee09a12dc1b58bdee68a7e1bf96.jpg",
      "https://i.pinimg.com/736x/e4/16/06/e41606310bd94ec07f3a107c288d9d6e.jpg",
      "https://i.pinimg.com/736x/c5/0f/96/c50f96962bcc0ebc4ff3591bdcd8ed75.jpg",
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF221B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF221B1B),
        foregroundColor: const Color(0xFFFADFCE),
        title: Text(
          "Redhair Crew",
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
