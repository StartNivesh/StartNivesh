import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField(TextEditingController controller, String text,
      IconData iconData, bool toHide) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        decoration: InputDecoration(
            hintText: text,
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            )),
      ),
    );
  }

  static CustomButton(VoidCallback voidCallback, String text) {
    return SizedBox(
      height: 50,
      width: 250,
      child: ElevatedButton(
          onPressed: () {
            voidCallback();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }

  //For Authentication process
  static CustomAlertBox(BuildContext context, String text) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text(text),
          backgroundColor: Colors.white, // Customize background color
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Customize shape
          titleTextStyle: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold), // Customize title text style
          contentTextStyle: TextStyle(color: Colors.black, fontSize: 16), // Customize content text style
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.blue), // Customize button text style
              ),
            ),
          ],
        );
      },
    );
  }

}
