import 'dart:ui';

import 'package:flutter/material.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Image.asset('assets/image/pizza2.png'),
    ));
  }
}
//Text("Product",style: TextStyle(fontSize: 20),),