import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Form2Segarra extends StatefulWidget {
  const Form2Segarra({Key? key}) : super(key: key);

  @override
  State<Form2Segarra> createState() => _Form2SegarraState();
}

class _Form2SegarraState extends State<Form2Segarra> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      clearValueOnUnregister: true,
      child: Column(
        children: [
          const SizedBox(height: 16.0),
          FormBuilderTextField(
            name: 'email',
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: const Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          FormBuilderTextField(
            name: 'address',
            decoration: InputDecoration(
              labelText: 'Address',
              prefixIcon: const Icon(Icons.home),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            maxLines: 6,
          ),
          const SizedBox(height: 16.0),
          FormBuilderTextField(
            name: 'mobileNumber',
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              prefixIcon: const Icon(Icons.phone),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
