import 'package:flutter/material.dart';

import 'diagnostics_page.dart';

class ShowAllTempData extends StatefulWidget {
  const ShowAllTempData({super.key});

  @override
  State<ShowAllTempData> createState() => _ShowAllTempDataState();
}

class _ShowAllTempDataState extends State<ShowAllTempData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Temperature',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 12, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              TodayTempTile(tempTime: '6:00AM', temperature: '98.2°F'),
              SizedBox(
                height: 25,
              ),
              show_all_data_button(),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class show_all_data_button extends StatelessWidget {
  const show_all_data_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => const DiagnosticsPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 118, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          'Show All Data',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class TodayTempTile extends StatefulWidget {
  final String temperature;
  final String tempTime;
  const TodayTempTile({
    super.key,
    required this.tempTime,
    required this.temperature,
  });

  @override
  State<TodayTempTile> createState() => _TodayTempTileState();
}

class _TodayTempTileState extends State<TodayTempTile> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => const ShowAllTempData(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/images/sun.png',
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
                      widget.tempTime,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.temperature,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 40,
              child: CheckboxListTile(
                activeColor: Colors.deepPurple[300],
                checkColor: Colors.white,
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
