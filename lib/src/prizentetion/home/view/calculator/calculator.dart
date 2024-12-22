import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({super.key});

  @override
  _CalculatorWidgetState createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  String _output = "0";

  void _buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        _output = "0";
      } else {
        if (_output == "0") {
          _output = value;
        } else {
          _output += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 27.sp),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 70,
          mainAxisSpacing: 1,
        ),
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemCount: 12,
        itemBuilder: (context, index) {
          final buttonValues = [
            '1',
            '2',
            '3',
            '4',
            '5',
            '6',
            '7',
            '8',
            '9',
            '.',
            '0',
            '<'
          ];
          final buttonValue = buttonValues[index];

          if (buttonValue.isEmpty) {
            return const SizedBox.shrink();
          }

          return TextButton(
            onPressed: () => _buttonPressed(buttonValue),
            child: Text(
              buttonValue,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          );
        },
      ),
    );
  }
}
