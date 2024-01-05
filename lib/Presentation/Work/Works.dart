import 'package:flutter/material.dart';
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
                      width: size.width / 3,
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
                              Icon(Icons.arrow_forward,color: kwhite,)
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ktransparent,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                    color: kTollens,
                                    width: 2), // Border width and color
                              ))),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
