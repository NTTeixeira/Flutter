import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        height: 400,
        width: 400,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellow,
          border: Border.all(
            width: 4,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
          ),
          padding: EdgeInsets.all(20),
          margin: const EdgeInsets.all(55),
          child: Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image(
                image: NetworkImage(
                  'https://picsum.photos/250?image=37',
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
