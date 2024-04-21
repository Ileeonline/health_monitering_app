import 'package:flutter/material.dart';
import 'package:hammad_ui_screen/widgets/time_data.dart';
import 'package:hammad_ui_screen/widgets/line_chart_widget.dart';

import 'show_all_temp_data.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({super.key});

  @override
  State<TemperaturePage> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 50, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Temperature',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 1.5,
                    color: Colors.grey[700]!,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Body Temperature',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Text(
                      '98.6F',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Past 24 hours',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        ),
                        const Text(
                          ' +0.9%',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LineChartWidget(timeDataList),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Recent Temperatures',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const RecentTempTile(
                temperature: '99.5 F',
                tempDate: 'Dec 19th',
              ),
              const RecentTempTile(
                temperature: '99.2 F',
                tempDate: 'Dec 18th',
              ),
              const RecentTempTile(
                temperature: '99.8 F',
                tempDate: 'Dec 17th',
              ),
              const RecentTempTile(
                temperature: '99.1 F',
                tempDate: 'Dec 16th',
              ),
              const RecentTempTile(
                temperature: '99.4 F',
                tempDate: 'Dec 15th',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentTempTile extends StatelessWidget {
  final String temperature;
  final String tempDate;
  const RecentTempTile({
    super.key,
    required this.tempDate,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (e)=>ShowAllTempData(),),);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                'assets/images/temperature.png',
                color: Colors.black,
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  temperature,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  tempDate,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
