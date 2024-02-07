import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:start_nivesh/HomeScreen.dart';

void main() {
  runApp(const RoleSelection());
}

class RoleSelection extends StatefulWidget {
  const RoleSelection({Key? key}) : super(key: key);

  @override
  State<RoleSelection> createState() => _RoleSelectionState();
}

class _RoleSelectionState extends State<RoleSelection> {
  final List<String> genderItems = [
    'Settled Businessman',
    'Young Entrepreneur',
    'Startup',
  ];

  String? selectedValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Select',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: ' Your', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                TextSpan(text: ' Role!',style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.red)),
              ],
            ),
          ),
          SizedBox(height: 30),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButtonFormField2<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text(
                      'Select Your Role',
                      style: TextStyle(fontSize: 14),
                    ),
                    items: genderItems
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select role.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      // Do something when selected item is changed.
                    },
                    onSaved: (value) {
                      selectedValue = value.toString();
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) =>  HomeScreen()),
                        );
                      }
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Continue',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
