import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  String imgUrl;

  FullScreenImage({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.square_arrow_down),
          ),
        ],
      ),
      body: InteractiveViewer(
        child: Center(
          child: Image.asset(
            imgUrl,
            width: double.infinity,
            height: double.infinity,
            // fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

// saveImageToDeviceGallery() async {
//   //final image = getImageFileFromAssets(img);
//   var imgByteData = await rootBundle.load(img);
//   final Uint8List imageBytes = imgByteData.buffer
//       .asUint8List(imgByteData.offsetInBytes, imgByteData.lengthInBytes);
//   final String imgSavingath = (await getExternalStorageDirectory())!.path;
//   //(await getApplicationSupportDirectory()).path;
//   //(await getApplicationDocumentsDirectory()).path;
//   final String physicalFileName = '$imgSavingath/dentawy.png';
//   final File imgFile = File(physicalFileName);
//   await imgFile.writeAsBytes(imageBytes, flush: true);
//   print(imgFile);
//   print(imgFile.path);
//   print(physicalFileName);
//   OpenFile.open(physicalFileName);
// }
//
// Future<File> getImageFileFromAssets(String imgPath) async {
//   final byteData = await rootBundle.load(imgPath);
//   //final file = File('${(await getTemporaryDirectory()).path}/$imgPath');
//   final file =
//   File('${(await getExternalStorageDirectory())!.path}/$imgPath');
//   await file.writeAsBytes(byteData.buffer
//       .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
//   return file;
// }
//  Future<File> getPictureFileFromAssets(String unique, String filename) async {
//    ByteData byteData = await rootBundle.load(assets/filename));
//
//    // this creates the file image
//    File file = await File('$imagesAppDirectory/$filename').create(recursive: true);
//
//    // copies data byte by byte
//    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
//
//    return file;
//  }
}
