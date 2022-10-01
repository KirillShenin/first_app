import 'package:flutter/material.dart';

class OpenImage extends StatelessWidget {
  final String imagePath;
  final String data;

  OpenImage({
    required this.imagePath,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Text(
              'Галерея',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87, // зеленый цвет текста
                  fontSize: 30),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Вы смотрите полное изображение',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[

                      Expanded(
                        child: FloatingActionButton(

                          onPressed: () {
                            Navigator.pop(context);
                          },
                          backgroundColor: Colors.white54,
                          child: Text(
                            'Назад',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
