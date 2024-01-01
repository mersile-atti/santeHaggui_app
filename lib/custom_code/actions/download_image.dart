// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:image_downloader_web/image_downloader_web.dart';

Future downloadImage(
  String? imageURL,
  bool? platformIsiOS,
  bool? platformIsAndroid,
  bool? platformIsWeb,
) async {
  if (platformIsWeb == true) {
    //code for web
    final WebImageDownloader _webImageDownloader = WebImageDownloader();
    await _webImageDownloader.downloadImageFromWeb(imageURL!);
  }

  if (platformIsAndroid == true || platformIsiOS == true) {
    //code for Android and iOS
    try {
      // Saved with this method.
      var imageId = await ImageDownloader.downloadImage(imageURL!);
      if (imageId == null) {
        return;
      }
      // Below is a method of obtaining saved image information.
      var fileName = await ImageDownloader.findName(imageId);
      var path = await ImageDownloader.findPath(imageId);
      var size = await ImageDownloader.findByteSize(imageId);
      var mimeType = await ImageDownloader.findMimeType(imageId);
    } on PlatformException catch (error) {
      print(error);
    }
  }
  //return successful message once the download finishes
  //this can be used as a action output variable to show a snackbar.
  return "Download Successful";
}
//Made by Blupry.com
//Blupry.com No-code marketplace, custom template and support!
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
