import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/Widget/Buttons.dart';
import 'package:personal_website/Presentation/Work/WorkCard.dart';

class Works extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  Works({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final leftorRight = [false, true, false];
    return Scaffold(
      body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
         
            children: [
              SizedBox(
                height: size.height / 1,    
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
                      color: kTollens,
                      height: size.height/2.5, 
                      width:size.width/2, 
                      child: ListView(
                        children:[ CarouselSlider(
                          items: [
                            //1st Image of Slider
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://archello.s3.eu-central-1.amazonaws.com/images/2018/02/21/ModernLuxuryCEOOfficeInteriorDesign1.1519240126.0188.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                                            
                            //2nd Image of Slider
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://officebanao.com/wp-content/uploads/2023/09/4-4-1024x576.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                                            
                            //3rd Image of Slider
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://static.wixstatic.com/media/bdf5a9_82c9bec502e94864a1e64fad77fb9533.jpg/v1/fill/w_1866,h_1050,al_c/bdf5a9_82c9bec502e94864a1e64fad77fb9533.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                                            
                            //4th Image of Slider
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc4sFdCzkGAqRYxYchjZTNO8vOXkIjAkXb-f0NWaWbrW735yQ_G9L-VAfXIVlB5Csy2oo&usqp=CAU"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                                            
                            //5th Image of Slider
                            Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://static1.bigstockphoto.com/8/3/4/large1500/438747719.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                                            
                          //Slider Container properties
                          options: CarouselOptions(
                            height: size.height/2.5,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                  ]),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
