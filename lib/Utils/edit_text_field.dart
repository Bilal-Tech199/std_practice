import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  const EditTextField({
    super.key,
    required this.hintText, required this.icon,
  });

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,

        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: Container(
            width: 35,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
