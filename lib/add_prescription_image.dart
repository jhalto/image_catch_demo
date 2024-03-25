

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PrescriptionImage extends StatefulWidget {
  const PrescriptionImage({super.key});

  @override
  State<PrescriptionImage> createState() => _PrescriptionImageState();
}

class _PrescriptionImageState extends State<PrescriptionImage> {
 XFile? _prescriptionSource;
 XFile? _prescriptionVideo;
   getPrescription()async{
     ImagePicker _picker = ImagePicker();
     _prescriptionSource = await _picker.pickImage(source: ImageSource.camera);
     setState(() {

     });
   }
   getPrescriptionVideo()async{
     ImagePicker _picker = ImagePicker();
     _prescriptionVideo = await _picker.pickVideo(source: ImageSource.camera);
     setState(() {

     });
   }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("if you want to get a image click the below button"),
          Expanded(child: _prescriptionSource==null?IconButton(onPressed: (){
            getPrescriptionVideo();
          }, icon: Icon(CupertinoIcons.photo_camera))
              :Image.file(File(_prescriptionVideo!.path))
          )
        ],
      ),
    );
  }
}
