import 'package:admin/civil/civil_final.dart';
import 'package:admin/civil/civil_second.dart';
import 'package:admin/civil/civil_third.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class CivilUpload extends StatefulWidget {
  const CivilUpload({Key? key}) : super(key: key);

  @override
  _CivilUploadState createState() => _CivilUploadState();
}

class _CivilUploadState extends State<CivilUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: "Civil".text.make(),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CivilSecond()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]),
              height: 80,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  20.widthBox,
                  Icon(
                    Icons.folder,
                    size: 60,
                  ),
                  20.widthBox,
                  "Second Year".text.bold.size(25).make(),
                ],
              ),
            ),
          ),
          25.heightBox,
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CiviThird()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]),
              height: 80,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  20.widthBox,
                  Icon(
                    Icons.folder,
                    size: 60,
                  ),
                  20.widthBox,
                  "Third Year".text.bold.size(25).make(),
                ],
              ),
            ),
          ),
          25.heightBox,
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CivilFinal()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]),
              height: 80,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  20.widthBox,
                  Icon(
                    Icons.folder,
                    size: 60,
                  ),
                  20.widthBox,
                  "Final Year".text.bold.size(25).make(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
