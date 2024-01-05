import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/Widget/ConatinerWidget.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({super.key, required this.size, required this.isleft});
  final Size size;
  final bool isleft;
  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        height: size.height / 2,
        width: size.width,
        widget: Row(
          children: [
            isleft
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height / 8,
                        width: size.width / 1.8,
                        child: Text('Spotify Modified version'.toUpperCase(),
                            style: GoogleFonts.libreBaskerville(
                                color: kTollens,
                                fontWeight: FontWeight.w800,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        height: size.height / 5,
                        width: size.width / 1.8,
                        child: const Text(
                            'Subscribe to Spotify Premium to download and listen offline wherever you are. Spotify gives you access to a world of free music, curated playlists, artists, and podcasts you love. Discover podcasts, new music, top songs or listen to your favorite artists and albums.',
                            style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                color: kgrey)),
                      ),
                    ],
                  )
                : ContainerWidget(
                    height: size.height / 3,
                    width: size.width / 2.5,
                    widget: h10,
                    boxdecoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('asset/old office with black.png'),
                            fit: BoxFit.cover))),
            isleft
                ? ContainerWidget(
                    height: size.height / 3,
                    width: size.width / 2.5,
                    widget: h10,
                    boxdecoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('asset/old office with black.png'),
                            fit: BoxFit.cover)))
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height / 8,
                        width: size.width / 1.8,
                        child: Text('Spotify Modified version'.toUpperCase(),
                            style: GoogleFonts.libreBaskerville(
                                color: kTollens,
                                fontWeight: FontWeight.w800,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        height: size.height / 5,
                        width: size.width / 1.8,
                        child: const Text(
                            'Subscribe to Spotify Premium to download and listen offline wherever you are. Spotify gives you access to a world of free music, curated playlists, artists, and podcasts you love. Discover podcasts, new music, top songs or listen to your favorite artists and albums.',
                            style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                color: kgrey)),
                      ),
                    ],
                  )
          ],
        ),
        boxdecoration: const BoxDecoration());
  }
}
