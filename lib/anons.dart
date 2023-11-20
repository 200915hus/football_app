import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  static final String id = 'add_page';

  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
            'Biz haqimizda',
                style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(13),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 700,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                          'Young Center',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Image(
                        image: AssetImage('assets/youngcentre.jpg'),
                        width: double.infinity,
                        height: 200),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Men Qahqadaryo viloyati shahrisabz shahridagi 'Young Centre'kurslarida o'qidim va flutterni o'rgandim bu markazda tajribali ustozlar menga bu yo'nalishni o'rgatishdi.Sizga ham bu markazni tavsiya qilaman.Murojaat uchun:",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child:  Text(
                        "+998 91 213 54 19",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
