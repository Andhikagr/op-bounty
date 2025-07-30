import 'package:flutter/material.dart';
import 'package:one_piece_bounty/utils/mq.dart';
import 'package:one_piece_bounty/poster/blackbeard.dart';
import 'package:one_piece_bounty/poster/crossguild.dart';
import 'package:one_piece_bounty/poster/redhair.dart';
import 'package:one_piece_bounty/poster/revolutionary.dart';
import 'package:one_piece_bounty/poster/strawhat.dart';
import 'package:one_piece_bounty/poster/worstg.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Group> items = [
      Group(
        name: "Straw Hat Crew",
        image: "assets/sh.png",
        onTap: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Strawhat())),
      ),
      Group(
        name: "Red Hair Pirates",
        image: "assets/rhp.png",
        onTap: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Redhair())),
      ),
      Group(
        name: "Revolutionary Army",
        image: "assets/ra.png",
        onTap: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Revolutionary())),
      ),
      Group(
        name: "Blackbeard Pirates",
        image: "assets/bpp.png",
        onTap: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Blackbeard())),
      ),
      Group(
        name: "Croos Guild",
        image: "assets/cg.png",
        onTap: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Crossguild())),
      ),
      Group(
        name: "Worst Generation",
        image: "assets/wg.png",
        onTap: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Worstg())),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF221B1B),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "One Piece Bounty",
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFFD42B2B),
                  shadows: [
                    Shadow(
                      offset: Offset(4, 4),
                      color: Color.fromARGB(255, 57, 10, 10),
                      blurRadius: 5,
                    ),
                    Shadow(
                      offset: Offset(-1, -1),
                      color: Colors.red.shade900.withValues(alpha: 0.6),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF261E1E),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF0E0B0B),
                                offset: Offset(3, 3),
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                              BoxShadow(
                                color: const Color(0xFF2E2525),
                                offset: Offset(-3, -3),
                                spreadRadius: 1,
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                  MQ.width(context) * 0.035,
                                ),
                                height: MQ.height(context) * 0.15,
                                child: Image.asset(
                                  items[index].image,
                                  fit: BoxFit.cover,
                                  opacity: AlwaysStoppedAnimation(0.88),
                                ),
                              ),
                              SizedBox(height: MQ.height(context) * 0.002),
                              Text(
                                textAlign: TextAlign.center,
                                softWrap: true,
                                items[index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xFF857373),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.white.withValues(alpha: 0.1),
                              onTap: items[index].onTap,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Group {
  final String name;
  final String image;
  final VoidCallback? onTap;

  Group({required this.name, required this.image, this.onTap});
}
