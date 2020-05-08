import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var tags = [
    "Python",
    "Java",
    "Dart",
    "Laravel",
    "Kotlin",
    "Php",
    "Java Script"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020d1c),
      appBar: AppBar(
        backgroundColor: Color(0xff020d1c),
        title: Text("Profile"),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.verified_user,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //bagian user
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/me.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Misbachul Munir",
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white70,
                          size: 17,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            "Cikarang, Bekasi",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                letterSpacing: 3,
                                wordSpacing: 2),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          //bagian social media
          Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "20K",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "10K",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "Followings",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        gradient: LinearGradient(
                            colors: [Colors.greenAccent, Colors.black54],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Text(
                        "Follow",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //bagian tags
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Colors.white60)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      tags[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          //bagian auto biografi
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.brown[300],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Autobiography",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: 4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Name : Misbachul Munir"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Date of Birthday : 29 Mei 1997"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Email : misbachulmunir2905@gmail.com"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Adress : Cikarang"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 8))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
