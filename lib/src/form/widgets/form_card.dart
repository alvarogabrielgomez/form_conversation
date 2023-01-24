import 'package:flutter/material.dart';

class FormCard extends StatelessWidget {
  final String? text;
  final Widget? widget;

  const FormCard({
    super.key,
    this.text,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          topLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      // color: const Color(0xFFDCECFF),
      color: Theme.of(context).colorScheme.primary,
      elevation: 0,
      child: widget ??
          Container(
            constraints: const BoxConstraints(maxWidth: 250),
            margin: const EdgeInsets.all(10),
            child: Text(
              text!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
    );
  }
}
