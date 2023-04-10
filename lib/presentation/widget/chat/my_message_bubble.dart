import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Text('Ullamco ea sit occaecat id minim ex.',
            style: TextStyle(color: Colors.white,
            fontSize: 15.0,),
            ),
          ),
        ),
        const SizedBox(height: 3.0,),
      ],
    );
  }
}
