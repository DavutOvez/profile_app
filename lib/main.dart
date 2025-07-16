import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_left_sharp, size: 40, color: Colors.white),
        actions: [Icon(Icons.apps, size: 40, color: Colors.white)],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topCenter,

              children: [
                Container(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                      'assets/images/F1 Desktop Wallpaper.jpeg',
                    ),
                  ),
                ),

                Positioned(
                  top: 100,
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width * 0.9,

                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[200],
                          ),
                          height: 250,
                          width: double.infinity,

                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),

                                child: Column(
                                  children: [
                                    SizedBox(height: 50),

                                    Text(
                                      'Berdi',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'Lorem ipsum dolor sit amet consectetur adipisicing elit.Ab quibusdam cum repellat, veritatis eius eaque dolorem neque delectus dolorum perspiciatis!',
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.7,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                  15,
                                                ), // Tüm köşeleri 15 birim yuvarla
                                              ),
                                              backgroundColor:
                                                  (Colors.blueAccent),
                                              foregroundColor: (Colors.white),
                                            ),
                                            child: Text('Follow'),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        IconButton(
                                          style: IconButton.styleFrom(
                                            backgroundColor: Colors.blueAccent,
                                          ),
                                          onPressed: () {},
                                          icon: Icon(Icons.telegram_outlined),
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,

                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/345.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 452,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Colors.grey[200],
                  ),

                  height: 500,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        '10K',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Likes', style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 3.0,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(height: 40),
                      Text(
                        '528',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Following', style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 3.0,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(height: 40),
                      Text(
                        '1.2K',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Followers', style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 3.0,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width * 0.6,

                  color: Colors.grey[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsetsGeometry.only(left: 10),
                        child: Text(
                          'Friends',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 50,

                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(left: 15),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 15.0,
                              ),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return GridTile(child: CircleAvatar(radius: 1));
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsetsGeometry.only(left: 10),
                        child: Text(
                          'Gallery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 306,
                        child: GridView.builder(
                          padding: EdgeInsets.only(left: 15),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 5.0,
                                childAspectRatio: 1.0, // Kare öğeler için
                              ),
                          itemCount: 40,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 10,
                              width: 30,
                              color: Colors.amber,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
