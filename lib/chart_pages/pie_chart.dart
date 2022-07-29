import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class pie_chart extends StatelessWidget {
  Map<String, double> dataMap = {
    "Facebook": 5,
    "Instagram": 3,
    "Twitter": 2,
    "YouTube": 2,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pie Chart"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        brightness: Brightness.dark,
      ),

      body: Center(
        child: Container(
          height: 400,
          padding: const EdgeInsets.all(20),
          child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('App Users Report 2022',
                  style: Theme.of(context).textTheme.bodyText2,),

                Expanded(
                  child: PieChart(
                    dataMap: dataMap,
                    chartRadius: MediaQuery.of(context).size.width / 1.7,
                    legendOptions: LegendOptions(
                      legendPosition: LegendPosition.right,
                    ),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValuesInPercentage: true,
                    ),
                  ),
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
