import 'package:flutter/material.dart';

import 'labeled_text_field.dart';

void main() => runApp(ReportForm());

class ReportForm extends StatelessWidget {
  const ReportForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 30,
      children: const [
        LabeledTextField(label: 'Name'),
        LabeledTextField(label: 'Mobile No'),
        LabeledTextField(label: 'E-mail ID'),
        LabeledTextField(label: 'Login ID'),
        LabeledTextField(label: 'City'),
        LabeledTextField(label: 'Topic'),
        LabeledTextField(label: 'User Type'),
        LabeledTextField(label: 'Address',maxLine: 5,),
        LabeledTextField(label: 'Describe Your Report',maxLine: 5,),
      ],
    );
  }
}

