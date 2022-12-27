import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dm_stepper/dm_stepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stepper Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Stepper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          DMStepper(
            getDMStepList(),
          ),
          const SizedBox(height: 20),
          DMStepper(
            getDMStepList(),
            direction: Axis.horizontal,
          ),
        ],
      ),
    );
  }
}

List<DMStepModel> getDMStepList() {
  return [
    DMStepModel(
      title: 'Basic Details',
      dmStepIcon: Icons.check,
      dmStepType: DMStepType.done,
      dmStepColorsModel: DMStepColorsModel().copyWith(
        doneIcon: Colors.red,
        doneBackground: Colors.limeAccent,
      ),
    ),
    DMStepModel(
      title: 'Company Details',
      dmStepIcon: Icons.check,
      dmStepType: DMStepType.done,
      dmStepColorsModel: DMStepColorsModel().copyWith(
        doneIcon: Colors.red,
        doneBackground: Colors.limeAccent,
      ),
    ),
    DMStepModel(
      title: 'Subscription plan',
      stepIcon: const DMStepIcon(),
    ),
    DMStepModel(
      title: 'Payment details',
      dmStepIcon: CupertinoIcons.money_dollar,
      dmStepType: DMStepType.next,
    ),
  ];
}

class DMStepIcon extends StatelessWidget {
  const DMStepIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(width: 1.5),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 154, 230, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 154, 230, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(width: 1.5),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 154, 230, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
