import 'package:flutter/material.dart';
import 'package:football_app/service/item.dart';

class Messi extends StatefulWidget {
  static final String id = 'Messi';

  const Messi({super.key});

  @override
  _MessiState createState() => _MessiState();
}

class _MessiState extends State<Messi> {
  Service sentence = Service();
  int index = 9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),color: Colors.white,
            ),

            expandedHeight: 240,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Leo Messi",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),
              ),
              background: Image.asset(
                "assets/Messi.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ism:",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Leo Messi",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Haqida:",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      sentence.getLongSentence(index).sentence,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 400,
                      child: PageView(
                        children: [
                          Container(
                            color: Colors.blue,
                            child: Image.asset(
                              "assets/Messi1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            color: Colors.green,
                            child: Image.asset(
                              "assets/Messi2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            color: Colors.orange,
                            child: Image.asset(
                              "assets/Messi3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}