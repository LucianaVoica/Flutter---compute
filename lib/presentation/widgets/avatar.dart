import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  File? image;
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
    Navigator.pop(context);
  }

  void showImage() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 2),
              child: ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text("Fa o poza"),
                onTap: () => pickImage(ImageSource.camera),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 2, 20, 10),
              child: ListTile(
                leading: Icon(Icons.photo_library),
                title: Text("Alege din galerie"),
                onTap: () => pickImage(ImageSource.gallery),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: showImage,
        child: CircleAvatar(
          radius: 20,
          backgroundImage: image != null ? FileImage(image!) : null,
          child:
              image == null
                  ? Icon(Icons.person, size: 20, color: Colors.white)
                  : null,
        ),
      ),
    );
  }
}
