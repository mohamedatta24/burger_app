import 'dart:io';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, this.image, this.onTap});

  final String? image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 55,
          backgroundColor: Colors.grey.shade200,
          backgroundImage: image != null && image!.isNotEmpty
              ? (image!.startsWith("http")
                    ? NetworkImage(image!)
                    : FileImage(File(image!)) as ImageProvider)
              : AssetImage(Assets.imagesUserPhoto),
        ),

        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            splashColor: Colors.transparent,
            autofocus: false,
            onTap: onTap,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.amber,
              child: Icon(
                CupertinoIcons.photo_camera_solid,
                size: 18,
                color: Color(0xff231F20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
