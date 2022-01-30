import 'package:flutter/material.dart';

import 'detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: tabController,
            tabs: [
              Tab(icon: Icon(Icons.more, color: Colors.grey, size: 16)),
              Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 16)),
              Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 16)),
              Tab(
                  icon: Icon(Icons.supervised_user_circle,
                      color: Colors.grey, size: 16)),
            ],
          ),
        ),
        //Drawer appbar bottomnavigator içinde barındırır.
        appBar: AppBar(
            backgroundColor: Colors.transparent, //boş renk
            elevation: 0, // gölge yok
            title: Text(
              "Moda Uygulaması",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {},
                color: Colors.grey,
              )
            ]),
        body: ListView(
          padding: EdgeInsets.only(top: 10),
          children: <Widget>[
            //ÜST LİSTVİEW // profil listesi
            Container(
                //color: Colors.blue,
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                    SizedBox(width: 30), //resimler arası bosluk
                    listeElemani("assets/model2.jpeg", "assets/chloelogo.png"),
                    SizedBox(width: 30),
                    listeElemani(
                        "assets/model3.jpeg", "assets/louisvuitton.jpg"),
                    SizedBox(width: 30),
                    listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                    SizedBox(width: 30),
                    listeElemani("assets/model2.jpeg", "assets/chloelogo.png"),
                    SizedBox(width: 30),
                    listeElemani(
                        "assets/model3.jpeg", "assets/louisvuitton.jpg"),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 6,
                  //color: Colors.blue,
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("assets/model1.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 10),
                          Container(
                              width: MediaQuery.of(context).size.width - 160,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, //daisy ve zamanı resme yakın yaptı
                                children: <Widget>[
                                  Text("Daisy",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Text("34 mins ago",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                ],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 22,
                          ),
                        ]),
                        SizedBox(height: 15),
                        Text(
                          "This offical website features a ribbed knit zipper jacket that is"
                          "modern and stylisgg.ıt looks verye temparesty and is recommet to frinedn",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                      imgPath: "assets/modelgrid1.jpeg")));
                            },
                            child: Hero(
                              tag: "assets/modelgrid1.jpeg",
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid1.jpeg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 11),
                          Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Detay(
                                          imgPath: "assets/modelgrid2.jpeg")));
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                      height: 95,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              2,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/modelgrid2.jpeg"),
                                              fit: BoxFit.cover))),
                                ),
                              ),
                              SizedBox(height: 8),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Detay(
                                            imgPath: "assets/modelgrid3.jpeg",
                                          )));
                                },
                                child: Hero(
                                  tag: "assets/modelgrid3.jpeg",
                                  child: Container(
                                      height: 95,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              2,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/modelgrid3.jpeg"),
                                              fit: BoxFit.cover))),
                                ),
                              )
                            ],
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                                height: 20,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.brown.withOpacity(0.2)),
                                child: Center(
                                  child: Text("#Louis Vuitton",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 10,
                                        color: Colors.grey,
                                      )),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 20,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.brown.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text("#Chloe ",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 10,
                                        color: Colors.grey,
                                      )),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.reply,
                                color: Colors.brown.withOpacity(0.4), size: 35),
                            SizedBox(
                              width: 5,
                            ),
                            Text("1.7K",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(Icons.chat_bubble_outline_outlined,
                                color: Colors.brown.withOpacity(0.4), size: 30),
                            SizedBox(
                              width: 5,
                            ),
                            Text("325",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                            SizedBox(
                              width: 80,
                            ),
                            Icon(Icons.favorite, color: Colors.red, size: 30),
                            SizedBox(
                              width: 5,
                            ),
                            Text("525",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(children: <Widget>[
      Stack(// üstüne bindirme
          children: <Widget>[
        Container(
            //Büyük resim
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            )),
        Positioned(
          top: 50,
          left: 50,
          child: Container(
            width: 20,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(logoPath), fit: BoxFit.cover)),
          ),
        )
      ]),
      SizedBox(
        height: 15,
      ),
      Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.brown.shade600,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ))
    ]);
  }
}
