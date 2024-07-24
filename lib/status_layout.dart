import 'package:flutter/material.dart';

class StatusLayout extends StatelessWidget {
  const StatusLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'ongoing',
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            elevation: WidgetStatePropertyAll(3),
            backgroundColor: WidgetStatePropertyAll(
                const Color.fromARGB(255, 186, 185, 185)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(16),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'delayed',
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'done',
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(16),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
