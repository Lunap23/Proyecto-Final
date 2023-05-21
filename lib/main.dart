import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.yellowAccent,
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.deepOrangeAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Colors.orange.shade50,
        Colors.orange.shade100,
        Colors.orangeAccent
      ],
    ),
    ),

    child: Stack(
    fit: StackFit.loose,
    children: <Widget>[
    Positioned.fill(
    top: 90,
    child: (_selectedIndex == 1)? List() : ((_selectedIndex == 0)? CompleteProfile() : Favorites()),
    ),
    Positioned.fill(
    top: 22,
    bottom: 680,
    child: Container(
    decoration: BoxDecoration(

    border: Border.all(
    color: Colors.orangeAccent
    ),
    color: Colors.orangeAccent.shade100
    ),
    child:  Profile(),
    ),
    )
    ],
    ),
    )
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Text("Profile",
          style: TextStyle(fontSize: 25)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text("Brenda Luna"),
                const Text("brenda.lunezp83@anahuac.mx"),
                const Text("Level: Premium")
              ],
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.orangeAccent
                      ),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://i.pinimg.com/564x/90/fe/96/90fe969e3710177918e51f6f09adf2f1.jpg"))
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class List extends StatelessWidget {
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Column(

                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(5,0,0,10),
                      child: Image.network(
                        "https://i.pinimg.com/564x/9e/78/25/9e78255cf8d837e82468e55618c15648.jpg",
                        height: 150,)
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5,0,0,10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/4c/5c/ad/4c5cad3a2febbda9f853f76f6f005017.jpg",
                      width: 150,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(5,0,0,10),
                    child:  Image.network(
                      "https://i.pinimg.com/564x/1a/ca/45/1aca4596dad0602c8acb448d4535407f.jpg",
                      height: 150,)
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(5,0,0,10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/60/1a/f0/601af077c7df7e8918a5f7ece18bdad1.jpg",
                      height: 150,)
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/4a/a3/eb/4aa3eb96a466812e8a55da8c06f52f79.jpg",
                            width: 97,                      )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(6,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/c3/0d/c2/c30dc2ce46ef84e0afd0605a4c6d05ae.jpg",
                            width: 97,)
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20,0,0,10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/37/a3/5d/37a35d1c7a9b569c3ae2fe1d93c92da6.jpg",
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20,0,0,10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/9e/78/25/9e78255cf8d837e82468e55618c15648.jpg",
                      width: 200,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/15/44/e4/1544e431950e0571aeb6738fabb4bf25.jpg",
                            width: 97,)
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(6,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/03/3a/ae/033aae384743c697254280564dc7d0ae.jpg",
                            width: 97,)
                      )
                    ],
                  )
                ],

              )
            ],
          ),
        )
      ],
    );
  }
}

class CompleteProfile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Center(child: Text("Account Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
        Center(child:  Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.orangeAccent
              ),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://i.pinimg.com/564x/90/fe/96/90fe969e3710177918e51f6f09adf2f1.jpg"))
          ),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(
              children: [
                const Text("Name",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const Text("Email",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const Text("Level",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const Text("Member since",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const Text("Likes",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const Text("Friends",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const Text("Mobile",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const Text("Country",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
              ],
            ),
            Column(
              children: [
                const Text("Brenda Luna", style: TextStyle(fontSize: 20)),
                const Text("brenda.lunez@anahuac.mx", style: TextStyle(fontSize: 20)),
                const Text("Premium", style: TextStyle(fontSize: 20)),
                const Text("January 2023", style: TextStyle(fontSize: 20)),
                const Text("10", style: TextStyle(fontSize: 20)),
                const Text("20", style: TextStyle(fontSize: 20)),
                const Text("5564425428", style: TextStyle(fontSize: 20)),
                const Text("Mexico", style: TextStyle(fontSize: 20))
              ],
            ),
          ],
        )
      ],
    )
    );
  }
}

class Favorites extends StatelessWidget {
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Column(

                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(5,0,0,10),
                      child: Image.network(
                        "https://i.pinimg.com/564x/ca/b3/d0/cab3d0bb31baa6bbd47df212eba4e256.jpg",
                        height: 150,)
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5,0,0,10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/cc/c4/06/ccc406dbafc09f3ac2f066a494af21e7.jpg",
                      width: 150,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(5,0,0,10),
                      child:  Image.network(
                        "https://i.pinimg.com/564x/76/1e/4e/761e4e53c11d254fbd67b5211c5316ba.jpg",
                        height: 150,)
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(5,0,0,10),
                      child: Image.network(
                        "https://i.pinimg.com/564x/56/ce/5c/56ce5cf1623e3ee5d53ca85d156fcc98.jpg",
                        height: 150,)
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/3b/e9/82/3be98228be10ca516f7f6a999477b149.jpg",
                            width: 97,                      )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(6,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/e1/9f/47/e19f4768a10c3f399fd5ba92fc4186eb.jpg",
                            width: 97,)
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20,0,0,10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/87/a8/a3/87a8a378128df67cc09df6eda20be10f.jpg",
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20,0,0,10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/2c/bc/9b/2cbc9bae53d5e61807edca263b91fe18.jpg",
                      width: 200,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/07/d0/f1/07d0f17b4c7b159879af491f9cc5ebcb.jpg",
                            width: 97,)
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(6,0,0,10),
                          child:  Image.network(
                            "https://i.pinimg.com/564x/4d/8d/b1/4d8db11688064111114a8b26b24b1e96.jpg",
                            width: 97,)
                      )
                    ],
                  )
                ],

              )
            ],
          ),
        )
      ],
    );
  }
}