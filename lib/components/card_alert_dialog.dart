import 'package:flutter/material.dart';

class CardAlertDialog extends StatelessWidget {
  const CardAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: 80.0,
          top: -90.0,
          child: Image.asset(
            'assets/icons/checked.png',
            height: 90,
            width: 90,
          ),
        ),
        Positioned(
          right: -40.0,
          top: -40.0,
          child: InkResponse(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const CircleAvatar(
              backgroundColor: Color(0xfffd1100),
              child: Icon(Icons.close, color: Color(0xffffffff)),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tarjeta añadida con éxito',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff23ff2a),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Ya puedes usar tu tarjeta para realizar pagos',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
