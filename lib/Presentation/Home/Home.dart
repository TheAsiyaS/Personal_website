import 'package:flutter/material.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/Widget/ConatinerWidget.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final topbarItems = ['Home', 'Works', 'About', 'Services', 'Contact'];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ktransparent,
        centerTitle: true,
        leading: const ContainerWidget(
            height: 70,
            width: 70,
            widget: h10,
            boxdecoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/Logo.png'), fit: BoxFit.cover))),
        title: SizedBox(
          height: 50,
          width: size.width / 1.5,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Center(
                    child: Text(
                  topbarItems[index],
                  style: GoogleFonts.playfairDisplay(),
                ));
              },
              separatorBuilder: (context, index) {
                return w30;
              },
              itemCount: 5),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print(size.height);
              },
              icon: const Icon(
                Icons.hub_outlined,
                color: kTollens,
              ))
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            ContainerWidget(
                height: size.height / 1,
                width: size.width,
                boxdecoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('asset/office with bridge colour.png'),
                        fit: BoxFit.cover)),
                widget: Container(
                  color: const Color.fromARGB(146, 0, 0, 0),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ASIYA . SHAJAHAN . B',
                            style: GoogleFonts.ptSerif(),
                          ),
                          Divider(
                            color: kTollens,
                            endIndent: size.width / 2.5,
                            indent: size.width / 2.5,
                          ),
                          SizedBox(
                            height: size.width <= 1500
                                ? size.height / 3
                                : size.height / 5,
                            width: size.width <= 1500
                                ? size.width / 1.5
                                : size.width / 2,
                            child: Center(
                              child: Text(
                                'Dedicated Flutter developer crafting digital solutions through elegant and efficient code.',
                                maxLines: 6,
                                style: GoogleFonts.libreBaskerville(
                                    fontWeight: FontWeight.w800, fontSize: 30),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                _scrollController.animateTo(
                                  _scrollController.position.maxScrollExtent,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              icon: const Icon(
                                Icons.keyboard_double_arrow_down,
                                size: 30,
                                color: kTollens,
                              )),
                          Text(
                            'Scroll Down',
                            style: GoogleFonts.ptSerif(color: kTollens),
                          ),
                        ],
                      ),
                      size.width <= 1500
                          ? Positioned(
                              bottom: 0,
                              top: 0,
                              left: size.width / 2,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ContainerWidget(
                                      height: 150,
                                      width: 250,
                                      widget: h10,
                                      boxdecoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('asset/Sign.png'),
                                              fit: BoxFit.cover)))
                                ],
                              ),
                            )
                          : Positioned(
                              bottom: 0,
                              top: 0,
                              left: size.width / 1.4,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ContainerWidget(
                                      height: 400,
                                      width: 400,
                                      widget: h10,
                                      boxdecoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/mainlogo.png'),
                                              fit: BoxFit.cover)))
                                ],
                              ),
                            )
                    ],
                  ),
                )),
            ContainerWidget(
              height: size.height / 2,
              width: size.width,
              boxdecoration: const BoxDecoration(),
              widget: Column(
                children: [
                  h20,
                  Text(
                    'A brief professional overview'.toUpperCase(),
                    style: const TextStyle(letterSpacing: 3, fontSize: 10),
                  ),
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
                            text: 'To Know ',
                          ),
                          TextSpan(
                            text: 'Me',
                            style: TextStyle(
                              color: kTollens, // Color for the "Me" text
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: size.height / 4,
                        width: size.width / 3,
                        child: const Text(
                            'Versatile mobile application developer with a specialization in Flutter, adept at merging technology with elegant UI/UX design. Proficient in multiple programming languages, including Java, C, C++, Flutter, Dart, and JavaScript. Extensive experience utilizing Firebase for efficient backend solutions',
                            maxLines: 5,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                height: 2,
                                fontWeight: FontWeight.w400,
                                color: kgrey)),
                      ),
                      SizedBox(
                        height: size.height / 4,
                        width: size.width / 3,
                        child: const Text(
                            'Skilled in Android Studio, with a passion for crafting seamless and visually appealing user experiences. Committed to innovation and staying at the forefront of emerging technologies, I bring a comprehensive skill set to transform ideas into high-quality, user-centric mobile applications.',
                            maxLines: 5,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                height: 2,
                                fontWeight: FontWeight.w400,
                                color: kgrey)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ContainerWidget(
                height: size.height / 1.5,
                width: size.width,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'All right reserved @Asiya',
                              style: TextStyle(
                                  letterSpacing: 3,
                                  fontSize: 10,
                                  color: kTollens),
                            )),
                        h10,
                        SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            color: kTollens,
                            thickness: 1.3,
                          ),
                        )
                      ],
                    ),
                    ContainerWidget(
                        height: size.height / 1.5,
                        width: size.width / 1.5,
                        widget: h10,
                        boxdecoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/mordern office.png'),
                                fit: BoxFit.cover))),
                  ],
                ),
                boxdecoration: const BoxDecoration())
          ],
        ),
      ),
    );
  }
}
