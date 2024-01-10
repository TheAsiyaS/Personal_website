import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/About/SkillCrad.dart';
import 'package:personal_website/Presentation/Widget/Buttons.dart';
import 'package:personal_website/Presentation/Widget/ConatinerWidget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ScrollController _scrollController = ScrollController();
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            ContainerWidget(
              height: size.height / 1,
              width: size.width,
              boxdecoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/office with bridge colour.png'),
                      fit: BoxFit.cover)),
              widget: Container(
                color: const Color.fromARGB(146, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.libreBaskerville(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: kwhite, // Default color for the text
                          ),
                          children: const [
                            TextSpan(
                              text:
                                  'I\'m ASIYA,\nMobile application developer specilized in ',
                            ),
                            TextSpan(
                              text: 'FLUTTER',
                              style: TextStyle(
                                color: kTollens, // Color for the "Me" text
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 15,
                      width: 180,
                      child: Elevatedbutton(
                          onpressed: () {},
                          widget: const Center(
                            child: Text(
                              'VIEW WORKS',
                              style: TextStyle(
                                  letterSpacing: 3,
                                  fontSize: 10,
                                  color: kwhite),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ktransparent,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                    color: kTollens,
                                    width: 2), // Border width and color
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'PRESENT PROFESSIONAL COMPETENCIES',
                    style: TextStyle(
                        letterSpacing: 3, fontSize: 10, color: kwhite),
                  ),
                  Divider(
                    color: kTollens,
                    endIndent: size.width / 3.5,
                    indent: size.width / 3.5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'Polyglot Programmer: Mastering Java, C, C++, Flutter, Dart, JavaScript, and More',
                      style: TextStyle(
                        color: kgrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 1.2,
                    width: size.width <= 1500 ? size.width : size.width / 1.2,
                    child: GridView.count(
                      crossAxisCount: size.width <= 1500 ? 2 : 4,
                      mainAxisSpacing: size.width <= 1500 ? 0 : 30,
                      crossAxisSpacing: size.width <= 1500 ? 0 : 30,
                      children: List.generate(
                          9,
                          (index) => const SkillCard(
                              height: 220,
                              elevation: 20,
                              language: 'JAVASCRIPT',
                              mainpercentage: 60,
                              subpercentage1: '30%',
                              subpercentage2: '50%')),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height / 2,
              width: size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: size.height / 15,
                            width: 180,
                            child: Elevatedbutton(
                                onpressed: () {},
                                widget: const Center(
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                        letterSpacing: 3,
                                        fontSize: 10,
                                        color: kwhite),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ktransparent,
                                    shape: const RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: kTollens,
                                          width: 2), // Border width and color
                                    ))),
                          ),
                          h20,
                          Text(
                            '30+ Projects',
                            style: GoogleFonts.playfairDisplay(
                                color: kTollens, fontSize: 25),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height / 15,
                              width: 180,
                              child: Elevatedbutton(
                                  onpressed: () {},
                                  widget: const Center(
                                    child: Text(
                                      'DOWNLOAD CV',
                                      style: TextStyle(
                                          letterSpacing: 3,
                                          fontSize: 10,
                                          color: kwhite),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: ktransparent,
                                      shape: const RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: kTollens,
                                            width: 2), // Border width and color
                                      ))),
                            ),
                            h20,
                            Text(
                              '10+ RealTime \nProjects',
                              style: GoogleFonts.playfairDisplay(
                                  color: kTollens, fontSize: 25),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  h10,
                  SizedBox(
                    height: size.height / 4.3,
                    width: size.width,
                    child: GridView.count(
                      crossAxisCount: size.width <= 1500 ? 2 : 4,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30,
                      childAspectRatio: 4.3,
                      children: List.generate(
                        6,
                        (index) => SizedBox(
                          height: size.height / 15,
                          width: 180,
                          child: Elevatedbutton(
                              onpressed: () {},
                              widget: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      'INSTAGRAM',
                                      style: TextStyle(
                                          letterSpacing: 3,
                                          fontSize: 10,
                                          color: kwhite),
                                    ),
                                    ContainerWidget(
                                        height: 30,
                                        width: 30,
                                        widget: h10,
                                        boxdecoration: BoxDecoration(
                                            color: kwhite,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'asset/Githublogo.png'),
                                                fit: BoxFit.cover)))
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ktransparent,
                                  shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: kTollens,
                                        width: 2), // Border width and color
                                  ))),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
