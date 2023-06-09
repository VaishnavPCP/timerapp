import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider4/providerclass.dart';
import 'package:provider4/timecontroller.dart';
import 'package:provider4/timercard.dart';
import 'package:provider4/timeroption.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcffB383E3),
      appBar: AppBar(
        title: Text(
          "Timer",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<Providerclass>(context,listen: false).reset();
              },
              icon: Icon(
                Icons.refresh,
                size: 37,
              )),
        ],
        backgroundColor: Color(0xcffB383E3),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: AlignmentDirectional.center,
              child:
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Timercard(),
                  SizedBox(height: 20),
                  Timeroption(),
                  SizedBox(height: 20,),
                  Timecontroller(),


                ],
              ),

          ),
        ),

    );
  }
}
