import 'package:flutter/material.dart';
import 'package:image_catch_demo/add_prescription_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  addPrescriptionImage(){
    return showModalBottomSheet(context: context, builder: (context) => PrescriptionImage(),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addPrescriptionImage();
        },
      ),
    );
  }
}
