

import 'package:flutter/material.dart';
import 'package:first_app/open_image.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Галерея',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87, // зеленый цвет текста
                  fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0)
                  ),
                ),
                child: ListView.builder(
                  controller: ScrollController(),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OpenImage(
                                imagePath: 'images/$index.jpg',
                                data: '$index'),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/$index.jpg'),
                            fit: BoxFit.fitWidth,

                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


