import 'package:flutter/material.dart';
import 'chart_pages/pie_chart.dart';
import 'chart_pages/line_chart.dart';
import 'chart_pages/bar_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Visualizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Data Visualizer by JPA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Center(child:Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('AVAILABLE CHARTS',
                    style: TextStyle(fontSize: 20, color: Colors.black38)))),
            Material(
              color: Colors.black45,
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>bar_chart()
                  ));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(image: AssetImage('assets/bar_icon.png'),
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover),
                      SizedBox(height: 10),
                      Text(
                        'BAR CHART',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(height: 10)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            Material(
              color: Colors.black45,
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>pie_chart()
                  ));

                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(image: AssetImage('assets/pie_icon.png'),
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover),
                    SizedBox(height: 10),
                    Text(
                      'PIE CHART',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 10)
                  ],
                ),

              ),
            ),

            SizedBox(height: 10),

            Material(
              color: Colors.black45,
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>line_chart()
                  ));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(image: AssetImage('assets/line_icon.png'),
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover),
                    SizedBox(height: 10),
                    Text(
                      'LINE CHART',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 10)
                  ],
                ),
              ),
            ),
          ],
        ),
        
        
        
        ),
      );
  }
}
