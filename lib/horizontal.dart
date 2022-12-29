import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';

class HorizontalStepper extends StatefulWidget {
  const HorizontalStepper({Key? key}) : super(key: key);

  @override
  State<HorizontalStepper> createState() => _HorizontalStepperState();
}

class _HorizontalStepperState extends State<HorizontalStepper> {
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Order Placed",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("Your order has been placed"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_one, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Preparing"),
        subtitle: StepperText("Your order is being prepared"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_two, color: Colors.white),
        )),
    StepperData(
        title: StepperText("On the way"),
        subtitle: StepperText(
            "Our delivery executive is on the way to deliver your item"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_3, color: Colors.white),
        )),
    StepperData(
      title: StepperText("Delivered",
          textStyle: const TextStyle(
            color: Colors.grey,
          )),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: AnotherStepper(
            stepperList: stepperData,
            stepperDirection: Axis.horizontal,
            gap: 20,
            iconWidth: 40,
            iconHeight: 40,
            activeBarColor: Colors.green,
            inActiveBarColor: Colors.grey,
            activeIndex: 1,
            barThickness: 8,
          ),
        ),
      ),
    );
  }
}
