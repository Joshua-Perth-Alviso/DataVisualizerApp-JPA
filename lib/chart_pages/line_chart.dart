import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class line_chart extends StatelessWidget {

  List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Line Chart"),
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
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: 'Half Yearly Sales Analysis'),
              legend: Legend(isVisible: true,),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<SalesData, String>>[
                LineSeries<SalesData, String>(
                  dataSource: data,
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Sales',
                  dataLabelSettings: DataLabelSettings(isVisible: true),
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

class SalesData{

  final String month;
  final double sales;

  SalesData(this.month, this.sales);

}
