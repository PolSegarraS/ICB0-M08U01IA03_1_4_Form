import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class Form1Segarra extends StatefulWidget {
  const Form1Segarra({Key? key}) : super(key: key);

  @override
  State<Form1Segarra> createState() => _Form1SegarraState();
}

class _Form1SegarraState extends State<Form1Segarra> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      clearValueOnUnregister: true,
      child: Column(
        children: [
          const Center(
            child: Text(
              "Form 1 Segarra",
              style: TextStyle(fontSize: 24),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Description"),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Please provide the speed of the vehicle?"),
                const Text(
                  "Please select one option given below",
                  style: TextStyle(color: Colors.grey),
                ),
                FormBuilderRadioGroup<String>(
                  name: 'speed',
                  options: ['Above 40km/h', 'Below 40km/h', '0 km/h']
                      .map((lang) => FormBuilderFieldOption(
                            value: lang,
                            child: Text(lang),
                          ))
                      .toList(growable: false),
                ),
                const Text("Enter remarks"),
                FormBuilderTextField(
                  name: 'remarks',
                  decoration: const InputDecoration(
                    labelText: 'Enter your remarks',
                  ),
                ),
                const Text("Please provide the high speed of the vehicle?"),
                const Text("please select one option given below",
                    style: TextStyle(color: Colors.grey)),
                FormBuilderDropdown<int>(
                  name: 'options',
                  validator: FormBuilderValidators.required(),
                  decoration: const InputDecoration(
                    label: Text('Select the option'),
                  ),
                  items: const [
                    DropdownMenuItem(value: 0, child: Text('Speed 1')),
                    DropdownMenuItem(value: 1, child: Text('Speed 2')),
                    DropdownMenuItem(value: 2, child: Text('Speed 3')),
                    DropdownMenuItem(value: 3, child: Text('Speed 4')),
                    DropdownMenuItem(value: 4, child: Text('Speed 5')),
                  ],
                ),
                const Text("Please provide the speed of veicle past 1 hour?"),
                const Text("please select one option given below",
                    style: TextStyle(color: Colors.grey)),
                FormBuilderCheckboxGroup<String>(
                  name: 'speed',
                  options: const [
                    FormBuilderFieldOption(value: '20 km/h'),
                    FormBuilderFieldOption(value: '30 km/h'),
                    FormBuilderFieldOption(value: '40 km/h'),
                    FormBuilderFieldOption(value: '50 km/h'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
