import 'package:flutter/material.dart';
import 'package:step_progress_bar/horizontal.dart';
import 'package:step_progress_bar/vertical.dart';

class StepperProgressBar extends StatefulWidget {
  const StepperProgressBar({Key? key}) : super(key: key);

  @override
  State<StepperProgressBar> createState() => _StepperProgressBarState();
}

class _StepperProgressBarState extends State<StepperProgressBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Stepper Progress'),
            bottom: TabBar(
              // labelColor: Colors.white,
              // indicatorColor: Colors.green,
              // unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Horizontal",
                ),
                Tab(
                  text: "Vertical",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [HorizontalStepper(), VerticalStepper()],
          )),
    );
  }
}
