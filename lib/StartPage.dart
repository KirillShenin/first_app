

import 'package:flutter/material.dart';
import 'package:first_app/OpenImage.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Галерея',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87, // зеленый цвет текста
                  fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
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
                                imagePath: 'images/${index}.jpg',
                                data: '${index}'),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/${index}.jpg'),
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

class Info {
  final String imagePath;
  final String data;

  Info({
    required this.imagePath,
    required this.data,
  });
}
