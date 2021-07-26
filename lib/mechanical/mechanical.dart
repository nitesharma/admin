import 'package:admin/mechanical/mech_final.dart';
import 'package:admin/mechanical/mech_second.dart';
import 'package:admin/mechanical/mech_third.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class MechanicalUpload extends StatefulWidget {
  const MechanicalUpload({Key? key}) : super(key: key);

  @override
  _MechanicalUploadState createState() => _MechanicalUploadState();
}

class _MechanicalUploadState extends State<MechanicalUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: "Mechanical".text.make(),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MechSecond()));
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
                  .push(MaterialPageRoute(builder: (context) => MechThird()));
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
                  .push(MaterialPageRoute(builder: (context) => MechFinal()));
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
