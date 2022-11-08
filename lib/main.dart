import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/services.dart';
import 'dart:async';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Mylevelone(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Mylevelone extends StatefulWidget {
  @override
  _MyleveloneState createState() => _MyleveloneState();
}
class _MyleveloneState extends State<Mylevelone> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                levelone()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      // child:FlutterLogo(size:MediaQuery.of(context).size.height)
      child:Image.asset(
        'assets/match.png',
        height: 40,
        width: 30,

      ),
    );
  }
}

class youlose extends StatefulWidget {
  const youlose({Key? key}) : super(key: key);

  @override
  State<youlose> createState() => _youloseState();
}

class _youloseState extends State<youlose> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      color: Colors.pink,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
           Center(
             child: Text("YOU LOSE"),
           ),
           SizedBox(
             height: 20,
           ),


          ],
        )

        )

      );

  }
}



class win extends StatefulWidget {
  const win({Key? key}) : super(key: key);

  @override
  State<win> createState() => _winState();
}

class _winState extends State<win> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(

        body:
            Container(
                color: Colors.pink,
                child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Center(
                          child: Text("YOU WIN"),
                        )
                       
                        

                      ],
                    )

                )

            ),



            ),

          );




  }
}

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                child:Image(
                    image: AssetImage("assets/icon.png"),
                    fit: BoxFit.cover),
              ),


              const SizedBox(
                width: 10,
              ),
              const Text(
                'matching game',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Colors.pinkAccent, //<-- SEE HERE

        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [

                    Colors.pink,
                    Colors.pinkAccent,

                    
                  ],
                )
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child:Column(

                children: [
                  Container(

                    height: 30,
                    width: double.infinity,
                    child: Text("Level 2",textAlign: TextAlign.center,style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Open Sans',
                        fontSize: 20),),),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/10.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          h10=1;
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/H.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number8=1;
                          result8();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/7.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          h7=1;
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/I.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number9=1;
                          result9();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/8.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          h8=1;
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/F.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number6=1;
                          result6();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/6.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          h6=1;
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/J.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number10=1;
                          result10();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/8.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          h9=1;
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/G.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number7=1;
                          result7();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/2.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          h2=1;
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/D.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number4=1;
                          result4();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/5.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          h5=1;
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/A.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number1=1;
                          result1();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/3.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          h3=1;
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/E.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number5=1;
                          result5();
                          if(counting1==10){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/1.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          h1=1;
                        },

                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(

                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/B.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number2=1;
                          result2();
                          if(counting1==10){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }




                        },

                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/4.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          h4=1;
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      ElevatedButton(
                        child: CircleAvatar(
                          radius: 130,
                          backgroundColor: Colors.transparent,

                          child: ClipOval(
                            child: Image.asset("assets/C.jpeg",
                            ),


                          ),
                        ),
                        onPressed: () {
                          AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/click.wav"),

                          );
                          number3=1;
                          result3();
                          if(counting1==10){
                            counting1=0;
                            counting2=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/correct.mp3"),

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const win()),
                            );
                          }
                          if(counting2==3){
                            counting2=0;
                            counting1=0;
                            AssetsAudioPlayer.newPlayer().open(
                              Audio("assets/wrong.mp3"),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const youlose()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 100),
                          backgroundColor: Colors.pink,
                          shape: const CircleBorder(),
                        ),
                      ),

                    ],

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


class levelone extends StatefulWidget {
  const levelone({Key? key}) : super(key: key);

  @override
  State<levelone> createState() => _leveloneState();
}

int h1=0;
int h2=0;
int h3=0;
int h4=0;
int h5=0;
int h6=0;
int h7=0;
int h8=0;
int h9=0;
int h10=0;
int number1=0;
int number2=0;
int number3=0;
int number4=0;
int number5=0;
int number6=0;
int number7=0;
int number8=0;
int number9=0;
int number10=0;



int counting1=0;
int counting2=0;
String m=" Game started";


result1(){
  if(h1==1 && number1==1) {
    counting1 = counting1 + 1;
    m="correct matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );

     h1=0;
     h2=0;
     h3=0;
    h4=0;
    h5=0;
    number1=0;
     number2=0;
     number3=0;
     number4=0;
    number5=0;
  }
  else if(h1!=1 && number1==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    counting2= counting2 + 1;
    m="wrong matching";
  }
}

result6(){
  if(h6==1 && number6==1) {
    counting1 = counting1 + 1;
    m="correct matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );

    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
  }
  else if(h6!=1 && number6==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
    counting2= counting2 + 1;
    m="wrong matching";
  }
}
result7(){
  if(h7==1 && number7==1) {
    counting1 = counting1 + 1;
    m="correct matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );

    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
  }
  else if(h7!=1 && number7==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
    counting2= counting2 + 1;
    m="wrong matching";
  }
}
result8(){
  if(h8==1 && number8==1) {
    counting1 = counting1 + 1;
    m="correct matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );

    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
  }
  else if(h8!=1 && number8==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
    counting2= counting2 + 1;
    m="wrong matching";
  }
}
result9(){
  if(h9==1 && number9==1) {
    counting1 = counting1 + 1;
    m="correct matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );

    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
  }
  else if(h9!=1 && number9==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
    counting2= counting2 + 1;
    m="wrong matching";
  }
}
result10(){
  if(h10==1 && number10==1) {
    counting1 = counting1 + 1;
    m="correct matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );

    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
  }
  else if(h10!=1 && number10==10){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    h6=0;
    h7=0;
    h8=0;
    h9=0;
    h10=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    number6=0;
    number7=0;
    number8=0;
    number9=0;
    number10=0;
    counting2= counting2 + 1;

  }
}
result2(){
  if(h2==1 && number2==1) {
    counting1 = counting1 + 1;
    m="correct matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
  }
  else if(h2!=1 && number2==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    counting2= counting2 + 1;
    m="wrong matching";
  }
}
result3(){
  if(h3==1 && number3==1) {
    counting1 = counting1 + 1;

    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
  }
  else if(h3!=1 && number3==1){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    counting2= counting2 + 1;
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
  }
}
result4(){
  if(h4==1 && number4==1) {
    m="correct matching";
    counting1 = counting1 + 1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
  }
  else if(h4!=1 && number4==1){
    m="wrong matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3")

    );
    counting2= counting2 + 1;
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;

  }
}
result5(){
  if(h5==1 && number5==1) {
    m="correct matching";
    counting1 = counting1 + 1;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/correct.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
  }
  else if(h5!=1 && number5==1){
    m="wrong matching";
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/wrong.mp3"),

    );
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    number1=0;
    number2=0;
    number3=0;
    number4=0;
    number5=0;
    counting2= counting2 + 1;

  }
}

class _leveloneState extends State<levelone> {
  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              const SizedBox(
                width: 10,
              ),
              const Text(
                'matching game',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Colors.pinkAccent, //<-- SEE HERE

        ),
        body:
            SingleChildScrollView(
        child:
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.pink,

                  Colors.pinkAccent,
               
                ],
              )
          ),
          child: Padding(
    padding: EdgeInsets.all(15),
    child:Column(

            children: [
              Container(

                height: 30,
                width: double.infinity,
                 child: Text("Level 1  ",textAlign: TextAlign.center,style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Open Sans',
                        fontSize: 20),),),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              ElevatedButton(
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Colors.transparent,

                    child: ClipOval(
                      child: Image.asset("assets/2.jpeg",
                      ),


                ),
              ),
          onPressed: () {
                h2=1;
                AssetsAudioPlayer.newPlayer().open(
                  Audio("assets/click.wav"),

                );
          },
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 100),
              shape: const CircleBorder(),
            backgroundColor: Colors.pink,
        ),
      ),
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/D.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      number4=1;
                      result4();
                      if(counting1==5){
                        counting1=0;
                        counting2=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/mixkit-game-level-completed-2059.wav"),

                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const page2()),
                        );
                      }
                      if(counting2==3){
                        counting1=0;
                        counting2=0;
                        AssetsAudioPlayer.newPlayer().open(
                            Audio("assets/wrong.mp3"),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const youlose()),
                        );
                      }

                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),

                ],

              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/5.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      h5=1;
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/A.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      number1=1;
                      result1();
                      if(counting1==5){
                        counting1=0;
                        counting2=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/mixkit-game-level-completed-2059.wav"),

                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const page2()),
                        );
                      }
                      if(counting2==3){
                        counting2=0;
                        counting1=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/wrong.mp3"),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const youlose()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),

                ],

              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/3.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      h3=1;
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/E.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      number5=1;
                      result5();
                      if(counting1==5){
                        counting1=0;
                        counting2=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/mixkit-game-level-completed-2059.wav"),

                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const page2()),
                        );
                      }
                      if(counting2==3){
                        counting2=0;
                        counting1=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/wrong.mp3"),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const youlose()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),

                ],

              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/1.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      h1=1;
                    },

                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  ElevatedButton(

                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/B.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      number2=1;
                      result2();
                      if(counting1==5){
                        counting1=0;
                        counting2=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/mixkit-game-level-completed-2059.wav"),

                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const page2()),
                        );
                      }
                      if(counting2==3){
                        counting2=0;
                        counting1=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/wrong.mp3"),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const youlose()),
                        );
                      }




                    },

                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),

                ],

              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/4.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      h4=1;
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.transparent,

                      child: ClipOval(
                        child: Image.asset("assets/C.jpeg",
                        ),


                      ),
                    ),
                    onPressed: () {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/click.wav"),

                      );
                      number3=1;
                      result3();
                      if(counting1==5){
                        counting1=0;
                        counting2=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/mixkit-game-level-completed-2059.wav"),

                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const page2()),
                        );
                      }
                      if(counting2==3){
                        counting1=0;
                        counting2=0;
                        AssetsAudioPlayer.newPlayer().open(
                          Audio("assets/wrong.mp3"),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const youlose()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      backgroundColor: Colors.pink,
                      shape: const CircleBorder(),
                    ),
                  ),

                ],

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



