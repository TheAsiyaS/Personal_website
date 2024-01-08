import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/Widget/Buttons.dart';
import 'package:personal_website/Presentation/Widget/ConatinerWidget.dart';
import 'package:personal_website/Presentation/Work/WorkCard.dart';

class Works extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  Works({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final leftorRight = [false, true, false];
    final List<String> imageUrls = [
      "https://officebanao.com/wp-content/uploads/2023/09/4-4-1024x576.jpg",
      "https://static.wixstatic.com/media/bdf5a9_82c9bec502e94864a1e64fad77fb9533.jpg/v1/fill/w_1866,h_1050,al_c/bdf5a9_82c9bec502e94864a1e64fad77fb9533.jpg",
      "https://i.imgur.com/lMNcqL2.jpg",
      "https://i.imgur.com/sMZBVm7.jpg",
    ];
    return Scaffold(
      body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(
                height: size.height / 1.1,
                width: size.width,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return WorkCard(
                        size: size,
                        isleft: leftorRight[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 3),
              ),
              SizedBox(
                height: size.height / 1,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: size.height / 15,
                      width: 180,
                      child: Elevatedbutton(
                          onpressed: () {},
                          widget: const Row(
                            children: [
                              Text(
                                'SHOW MORE',
                                style: TextStyle(
                                    letterSpacing: 3,
                                    fontSize: 10,
                                    color: kwhite),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: kwhite,
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ktransparent,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                    color: kTollens,
                                    width: 2), // Border width and color
                              ))),
                    ),
                    const Text(
                      'OTHER MAJOR PROJECTS',
                      style: TextStyle(
                          letterSpacing: 3, fontSize: 10, color: kwhite),
                    ),
                    Text(
                      'Additional significant Projects',
                      style: GoogleFonts.libreBaskerville(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        color: kTollens,
                      ),
                    ),
                    const Divider(
                      color: kTollens,
                      endIndent: 100,
                      indent: 100,
                    ),
                    const Text(
                      'Enclosed are supplementary noteworthy projects, meticulously crafted with dedication and precision. I trust they garner your esteemed appreciation.',
                      style: TextStyle(color: kgrey),
                    ),
                    Container(
                      height: size.height/2,
                      width: size.width/1.7,
                      child: CarouselSlider.builder(
                        itemCount: imageUrls.length,
                        options: CarouselOptions(
                          height: size.height/2,
                          autoPlay: true,
                          viewportFraction: 0.8,
                          aspectRatio: 2.0,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          return Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(imageUrls[itemIndex]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      'WANT TO SEE MORE CLICK BELOW',
                      style: GoogleFonts.libreBaskerville(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: size.height / 15,
                      width: 180,
                      child: Elevatedbutton(
                          onpressed: () {},
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'GITHUB',
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
                                      borderRadius: BorderRadius.circular(50),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/Githublogo.png'))))
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ktransparent,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(color: kTollens, width: 2),
                              ))),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
