import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/Widget/Buttons.dart';
import 'package:personal_website/Presentation/Widget/ConatinerWidget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
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
                                letterSpacing: 3, fontSize: 10, color: kwhite),
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
              children: [
                const Text(
                  'PRESENT PROFESSIONAL COMPETENCIES',
                  style:
                      TextStyle(letterSpacing: 3, fontSize: 10, color: kwhite),
                ),
            const     Text('Polyglot Programmer: Mastering Java, C, C++, Flutter, Dart, JavaScript, and More',style: TextStyle(color: kgrey),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
