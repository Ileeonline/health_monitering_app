import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DiagnosticsPage extends StatefulWidget {
  const DiagnosticsPage({super.key});

  @override
  State<DiagnosticsPage> createState() => _DiagnosticsPageState();
}

class _DiagnosticsPageState extends State<DiagnosticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppbarItem(
          buttonIcon: Icons.arrow_back_ios_rounded,
        ),
        actions: const [
          AppbarItem(
            buttonIcon: Icons.file_copy,
          ),
          AppbarItem(
            buttonIcon: Icons.arrow_upward_rounded,
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 20, top: 12, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Diagnostics',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            HeartBeat(),
            InProgressWidget(),
            Results(),
          ],
        ),
      ),
    );
  }
}

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 170, 255, 173),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Image.asset(
                      'assets/images/heartbeat.png',
                      height: 40,
                      width: 40,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '851 ms',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Hi-Fi interval',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: [
              ProgressIndicatorLinear(
                progress: 1.0,
                value: '851 ms',
              ),
              ProgressIndicatorLinear(
                progress: 0.0,
                value: '841 ms',
              ),
              ProgressIndicatorLinear(
                progress: 0.0,
                value: '871 ms',
              ),
              ProgressIndicatorLinear(
                progress: 0.0,
                value: '881 ms',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Results extends StatelessWidget {
  const Results({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/complete.png',
            height: 100,
            width: 100,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Results',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              Text(
                'You are calm and ready!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Text(
                      '• Stress',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 186, 224, 255),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Text(
                      '• Recovery',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProgressIndicatorLinear extends StatelessWidget {
  final double progress;
  final String value;
  const ProgressIndicatorLinear({
    super.key,
    required this.progress,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LinearPercentIndicator(
          width: 84.0,
          animation: true,
          animationDuration: 1000,
          lineHeight: 6.0,
          percent: progress,
          backgroundColor: Colors.white,
          progressColor: Colors.black,
          barRadius: const Radius.circular(18),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
      ],
    );
  }
}

class HeartBeat extends StatelessWidget {
  const HeartBeat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 186, 224, 255),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Image.asset(
                      'assets/images/heartbeat.png',
                      height: 40,
                      width: 40,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Heartbeat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                '82',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '  bpm',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppbarItem extends StatelessWidget {
  final IconData buttonIcon;
  const AppbarItem({
    super.key,
    required this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 6,
      ),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          buttonIcon,
          color: Colors.black,
        ),
      ),
    );
  }
}
