import 'package:flutter/material.dart';
import 'package:one_piece_bounty/utils/mq.dart';

class Revolutionary extends StatefulWidget {
  const Revolutionary({super.key});

  @override
  State<Revolutionary> createState() => _RevolutionaryState();
}

class _RevolutionaryState extends State<Revolutionary> {
  @override
  Widget build(BuildContext context) {
    final List<String> onePiece = [
      "https://i.pinimg.com/736x/48/de/0c/48de0c96a13eff07187c276b75df6c02.jpg",
      "https://i.pinimg.com/736x/8b/61/af/8b61af634b3f9fc7af39fc640b778565.jpg",
      "https://i.pinimg.com/736x/ae/10/54/ae1054023a2f83d2b74828479086939b.jpg",
      "https://i.pinimg.com/736x/67/31/c2/6731c29069617e1e6c9daad3b9db8162.jpg",
      "https://i.pinimg.com/736x/d2/cf/48/d2cf48e841273b2f3570dd28e40dc738.jpg",
      "https://i.pinimg.com/736x/c5/63/61/c56361fd8898563355ee152881eeeb97.jpg",
      "https://i.pinimg.com/736x/94/90/b1/9490b120dca8a096e59622c955945736.jpg",
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF221B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF221B1B),
        foregroundColor: const Color(0xFFFADFCE),
        title: Text(
          "Revolutionary Army",
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
