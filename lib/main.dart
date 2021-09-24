import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pedometer/pedometer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fdottedline/fdottedline.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'AAA'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: const Color(0xff2b81e8),
    ));
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double heightChart = height/3 - 50;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xff2b81e8),
          child: Column(

            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: width/11,
                          child: Row(
                            children: [
                              Container(
                                width: width/9,
                                child: CircleAvatar(
                                  radius: width/11,
                                  child: ClipRRect(
                                    borderRadius:BorderRadius.circular(width/11),
                                    child: Image.asset("assets/images/avatar.png"),
                                  ),
                                ),
                              ),
                              Text("Hi Creative Academy", style: TextStyle(color: Colors.white),),
                            ],
                          )
                      ),
                      Container(
                          height: width/11,
                          child: Image.asset("assets/images/notify.png")
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff2871ce),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text("SEP 21, TUE", style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    )
                ),
              ),
              Container(
                height: 285,
                child: CircularPercentIndicator(
                  radius: width/1.5,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 5.0,
                  percent: 0.4,
                  arcType: ArcType.OVER_HALF,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Container(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Column(
                        children: [
                          Container(
                              height: width/8,
                              child: Image.asset("assets/images/run.png")
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                "3765",
                                style:
                                new TextStyle(fontWeight: FontWeight.bold, fontSize: 46.0,color: Colors.greenAccent),
                              ),
                          )
                        ],
                      ),
                    )
                  ),
                  backgroundColor: Colors.white,
                  progressColor: Colors.red,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("Calories"),
                          ),
                          Padding(
                              padding: EdgeInsets.all(3),
                              child: Text("651", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("Kcal", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white38),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("SpeedAvg"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("3", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("Km/h", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white38),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("Distance"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("7", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Text("Km", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white38),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(
                  height: height/3 + 16,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex:3,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 92, 15, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                              Text("GOAL", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            ]
                          )
                        ),
                      ),
                      Expanded(
                        flex:14,
                        child: Stack(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 2,
                                                  height: heightChart - (heightChart*0.6),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white30,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: heightChart - (heightChart*0.4),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        Text("WED", style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 2,
                                                  height: heightChart - (heightChart*0.75),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white30,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: heightChart - (heightChart*0.25),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        Text("THU", style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 2,
                                                  height: heightChart - (heightChart*0.68),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white30,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: heightChart - (heightChart*0.32),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        Text("FRI", style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 2,
                                                  height: heightChart - (heightChart*0.59),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white30,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: heightChart - (heightChart*0.41),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        Text("SAT", style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 2,
                                                  height: heightChart - (heightChart*0.82),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white30,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: heightChart - (heightChart*0.18),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(5),
                                                  ),
                                                ),
                                              ],
                                            )
                                        ),
                                        Text("SUN", style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: FDottedLine(
                                color: Colors.white54,
                                width: (width*14)/20,
                              ),
                            )
                          ],
                        )
                      ),
                      Expanded(
                        flex:3,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 92, 0, 0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Text("8000", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                ]
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),

    );
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  Paint _paint;
  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint.color = Colors.black; //dots color
    _paint.strokeWidth = 2; //dots thickness
    _paint.strokeCap = StrokeCap.square; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = 0; i < 400; i = i + 15) {
      // 15 is space between dots
      if (i % 3 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class SampleCircularPage extends StatefulWidget {
  @override
  _SampleCircularPageState createState() => _SampleCircularPageState();
}

class _SampleCircularPageState extends State<SampleCircularPage> {
  String state = 'Animation start';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Percent Indicators"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: <Widget>[
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              animationDuration: 3000,
              percent: 0.7,
              animateFromLastPercent: true,
              center: Text(
                "70.0%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: Text(
                "Sales this week",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
              widgetIndicator: RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.airplanemode_active, size: 30),
              ),
            ),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: 0.5,
              center: Text("50%"),
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.grey,
              maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
              linearGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orange, Colors.yellow],
              ),
            ),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: 0.8,
              header: Text("Icon header"),
              center: Icon(
                Icons.person_pin,
                size: 50.0,
                color: Colors.blue,
              ),
              reverse: true,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CircularPercentIndicator(
                radius: 100.0,
                animation: true,
                animationDuration: 2000,
                lineWidth: 10.0,
                percent: 0.5,
                arcBackgroundColor: Colors.orangeAccent,
                arcType: ArcType.HALF,
                center: Text(
                  "40 hours",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.transparent,
                progressColor: Colors.red,
              ),
              CircularPercentIndicator(
                radius: 120.0,
                animation: true,
                animationDuration: 2000,
                lineWidth: 10.0,
                percent: 0.5,
                reverse: true,
                arcBackgroundColor: Colors.teal,
                arcType: ArcType.FULL,
                center: Text(
                  "20 hours",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.yellow,
                progressColor: Colors.red,
              ),
            ]),
            CircularPercentIndicator(
              radius: 100.0,
              animation: true,
              animationDuration: 2000,
              lineWidth: 10.0,
              percent: 0.5,
              startAngle: 90,
              center: Text(
                "Start angle 250",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.grey,
              progressColor: Colors.red,
            ),
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              animationDuration: 3000,
              percent: 0.7,
              animateFromLastPercent: true,
              center: Text(
                "70.0%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: Text(
                "Sales this week",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: Text("100%"),
                progressColor: Colors.green,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularPercentIndicator(
                      radius: 45.0,
                      lineWidth: 4.0,
                      percent: 0.10,
                      center: Text("10%"),
                      progressColor: Colors.red,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    CircularPercentIndicator(
                      radius: 45.0,
                      lineWidth: 4.0,
                      backgroundWidth: 1.0,
                      percent: 0.2,
                      animation: true,
                      center: Text("20%"),
                      progressColor: Colors.orangeAccent,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    CircularPercentIndicator(
                      radius: 45.0,
                      lineWidth: 4.0,
                      percent: 0.30,
                      center: Text("30%"),
                      progressColor: Colors.orange,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    CircularPercentIndicator(
                      radius: 45.0,
                      lineWidth: 4.0,
                      backgroundWidth: 8,
                      animation: true,
                      animationDuration: 200,
                      percent: 0.60,
                      center: Text("60%"),
                      progressColor: Colors.yellow,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    CircularPercentIndicator(
                      radius: 45.0,
                      lineWidth: 4.0,
                      percent: 0.90,
                      center: Text("90%"),
                      progressColor: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    CircularPercentIndicator(
                      radius: 45.0,
                      lineWidth: 4.0,
                      percent: 1.0,
                      animation: true,
                      restartAnimation: true,
                      center: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      progressColor: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ),
            CircularPercentIndicator(
              radius: 80.0,
              lineWidth: 5.0,
              animation: true,
              percent: .5,
              animationDuration: 2500,
              animateFromLastPercent: true,
              center: Text(
                "50.0%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: Text(
                state,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.blueAccent,
              onAnimationEnd: () =>
                  setState(() => state = 'End Animation at 50%'),
            ),
            const SizedBox(height: 20),
            CircularPercentIndicator(
              radius: 80.0,
              backgroundColor: Colors.white,
              percent: .7,
              lineWidth: 10,
              backgroundWidth: 15,
              fillColor: Colors.transparent,
              circularStrokeCap: CircularStrokeCap.round,
              arcBackgroundColor: Colors.transparent,
              arcType: ArcType.HALF,
            ),
          ],
        ),
      ),
    );
  }
}


