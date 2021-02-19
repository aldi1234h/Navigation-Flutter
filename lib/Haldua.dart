import 'package:flutter/material.dart';

class Haldua extends StatelessWidget {
  final List<Color> colors = [
    Colors.cyan,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.orange
  ];
  final List<Color> colors2 = [
    Colors.amber,
    Colors.deepOrange,
    Colors.black,
    Colors.pink,
    Colors.purple
  ];

  final List<String> name = ['Albert', 'Wan', 'Xin', 'Lemon', 'Asep'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Halaman Ke Dua"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 150,
                          color: colors[index],
                          child: Center(
                            child: Text(
                              '${name[index]}',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        );
                      },
                      itemCount: colors.length,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 400,
                          height: 150,
                          color: colors[index],
                          child: Center(
                            child: Text(
                              '${name[index]}',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        );
                      },
                      itemCount: colors.length,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: 100,
                          height: 50,
                          child: Card(
                            color: colors[index],
                            child: Center(
                              child: Text(
                                '${name[index]}',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          width: 100,
                          height: 50,
                          child: Card(
                            color: colors2[index],
                            child: Center(
                              child: Text(
                                '${name[index]}',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Haltiga');
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text('Masuk Halaman Tiga',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Halsatu');
                    },
                    child: const Text('Kembali Halaman satu',
                        style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
