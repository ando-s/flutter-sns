// intとかString以外のものreturn
// package
// import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_sns/constants/strings.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile> returnXFile() async {
  final ImagePicker picker = ImagePicker();
// Pick an image.
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  return image!;
}

Future<File?> returnCroppedFile({required XFile? xFile}) async {
  final instnce = ImageCropper();

  final File? result = await instnce.cropImage(
      sourcePath: xFile!.path,
      // 気になる場合に対応
      aspectRatioPresets: Platform.isAndroid
          ? [CropAspectRatioPreset.square]
          : [CropAspectRatioPreset.square],
      androidUiSettings: const AndroidUiSettings(
          toolbarTitle: cropperTitle,
          toolbarColor: Colors.green,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: false),
      iosUiSettings: const IOSUiSettings(title: cropperTitle));
  return result;
}
