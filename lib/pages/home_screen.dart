import 'package:bio/pages/audios_screen.dart';
import 'package:bio/pages/bio_screen.dart';
import 'package:bio/pages/devise_screen.dart';
import 'package:bio/pages/gallery_screen.dart';
import 'package:bio/pages/news_screen.dart';
import 'package:bio/pages/quotes_screen.dart';
import 'package:bio/pages/videos_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff064635),
        shadowColor: const Color(0xff519259),
        elevation: 15,
        title: const Text(
          'سفیر عشق',
          style: TextStyle(
              fontSize: 28, color: Color(0xfff0bb62), fontFamily: 'btir'),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Container(
                child: Image.asset('images/logo.png'),
              ),
              Text(
                """
        این نرم افزار به مناسبت دومین سالگرد شهادت سردار رشید اسلام حاج قاسم سلیمانی در دیماه١۴٠٠ توسط یکی از مدرسین تاپلرن جهت استفاده در دوره ی آموزشی طراحی و تولید شده است
        ----------
        :     برنامه نویس
        | Meti Kh |""",
                style: TextStyle(
                  fontFamily: 'btir',
                  height: 2.5,
                  letterSpacing: 1.5,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xfff4eea0),
      body: ListView(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return BioScreen();
                      },
                    ));
                  });
                },
                child: Container(
                  height: 110,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage('images/1.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return DeviseScreen();
                            },
                          ));
                        });
                      },
                      child: Container(
                        height: 185,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('images/2.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return GalleryScreen();
                              },
                            ));
                          });
                        },
                        child: Container(
                          height: 85,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage('images/3.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return NewsScreen();
                              },
                            ));
                          });
                        },
                        child: Container(
                          height: 85,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage('images/4.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AudiosScreen();
                      },
                    ));
                  });
                },
                child: Container(
                  height: 110,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage('images/5.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return VideosScreen();
                            },
                          ));
                        });
                      },
                      child: Container(
                        height: 185,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('images/6.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return QuotesScreen();
                            },
                          ));
                        });
                      },
                      child: Container(
                        height: 185,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('images/7.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
