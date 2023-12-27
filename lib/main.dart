import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/Common/Colors&Size.dart';
import 'package:personal_website/Presentation/Widget/ConatinerWidget.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

//flutter run -d chrome --web-renderer html
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kblack,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  'Home',
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
                        image: AssetImage('asset/HomeImage.jpg'),
                        fit: BoxFit.cover)),
                widget: Container(
                  color: const Color.fromARGB(136, 0, 0, 0),
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
                              onPressed: () {},
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
            Container(
              height: 100,
              width: size.width,
            )
          ],
        ),
      ),
    );
  }
}
//https://img.freepik.com/premium-photo/website-header-portrait-gorgeous-smiling-young-female-using-laptop-computer-workplace-side_386167-6922.jpg
