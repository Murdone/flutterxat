import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Text(
              'Hola Mundo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 3.0,
        ),
        //todo: image
        _ImageBubble(),
        const SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    /*media query sobre el dispositivo que se esta utilizando
    el context del arbol de widget tien distintas propiedades 
    y del dispositivo que se esta corriendo 
    pero le pedimos el size   */
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.network(
        'https://yesno.wtf/assets/no/3-80a6f5b5d6684674bcfeda34accca4e1.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.fill,
      ),
    );
  }
}
