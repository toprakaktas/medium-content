import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stepper Widget Demo')),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _index,
        onStepContinue: () {
          if (_index < 5) {
            setState(() {
              _index += 1;
            });
          }
        },
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        steps: <Step>[
          Step(
            title: Text('Step 1', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('Enter Your Name', style: TextStyle(fontStyle: FontStyle.italic)),
            content: TextField(
              decoration: InputDecoration(labelText: 'Name Surname'),
            ),
            isActive: _index >= 0,
            state: _index > 0 ? StepState.complete : StepState.indexed,

          ),
          Step(
            title: Text('Step 2', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('Enter Birth Date', style: TextStyle(fontStyle: FontStyle.italic)),
            content: TextField(
              decoration: InputDecoration(labelText: 'Day/Month/Year')),
            isActive: _index >= 1,
            state: _index > 1 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: Text('Step 3', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('Job Title', style: TextStyle(fontStyle: FontStyle.italic)),
            content: TextField(
              decoration: InputDecoration(labelText: 'Job Title'),
            ),
            isActive: _index >= 2,
            state: _index > 2 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: Text('Step 4', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('Working Status', style: TextStyle(fontStyle: FontStyle.italic)),
            content: TextField(
              decoration: InputDecoration(hintText: 'Employed, Unemployed, Student')
            ),
            isActive: _index >= 3,
            state: _index > 3 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: Text('Step 5', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('Submit', style: TextStyle(fontStyle: FontStyle.italic)),
            content: Text('Review and submit your information.', style: TextStyle(fontWeight: FontWeight.bold)),
            isActive: _index >= 4,
            state: _index > 4 ? StepState.complete : StepState.indexed,
          )
        ],
      ),
    );
  }
}