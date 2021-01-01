import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//infoDialog(BuildContext context, title, content){ // normal
infoDialog({BuildContext context, title, content}) {
  // parametros con nombre

  if (Platform.isIOS) {
    return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cerrar"))
            ],
          );
        });
  }

  showDialog(
      // Material Design
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cerrar"))
          ],
        );
      });
}
