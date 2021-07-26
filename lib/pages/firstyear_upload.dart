import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:io';

import 'package:path/path.dart';

import 'firebaseapi.dart';

class FirstYearUpload extends StatefulWidget {
  const FirstYearUpload({Key? key}) : super(key: key);

  @override
  _FirstYearUploadState createState() => _FirstYearUploadState();
}

class _FirstYearUploadState extends State<FirstYearUpload> {
  File? file;
  UploadTask? task;
  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : 'No File Selected';

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: "First Year".text.size(25).make(),
      ),
      body: Center(
        child: Column(
          children: [
            200.heightBox,
            ElevatedButton(
              onPressed: () {
                selectFile();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.attach_file),
                  "attach file".text.make(),
                ],
              ),
            ),
            10.heightBox,
            Text(
              fileName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            40.heightBox,
            ElevatedButton(
              onPressed: () {
                uploadFile();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload_file),
                  "Upload  file".text.make(),
                ],
              ),
            ),
            SizedBox(height: 20),
            task != null
                ? buildUploadStatus(task!)
                : Container(
                    child: "progress".text.make(),
                  ),
          ],
        ),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;
    final path = result.files.single.path;

    setState(() => file = File(path!));
  }

  Future uploadFile() async {
    if (file == null) return;

    final fileName = basename(file!.path);
    final destination = 'first_notes/$fileName';

    task = FirebaseApi.uploadFile(destination, file!);
    setState(() {});

    if (task == null) return;

    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    print('Download-Link: $urlDownload');
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
        stream: task.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final snap = snapshot.data!;
            final progress = snap.bytesTransferred / snap.totalBytes;
            final percentage = (progress * 100).toStringAsFixed(2);

            return Text(
              '$percentage %',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            );
          } else {
            return Container();
          }
        },
      );
}
