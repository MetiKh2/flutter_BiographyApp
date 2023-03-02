import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff064635),
        shadowColor: const Color(0xff519259),
        elevation: 15,
        title: const Text(
          'گالری تصاویر',
          style: TextStyle(
              fontSize: 28, color: Color(0xfff0bb62), fontFamily: 'btir'),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xfff4eea0),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 170,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('images/${index + 1}.jpg'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 170,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('images/${index + 2}.jpg'),
                              fit: BoxFit.fill)),
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
