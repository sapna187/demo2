import 'package:demo2/homePage.dart';
import 'package:demo2/saved2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'constants.dart';
import 'main.dart';

class Edit extends StatelessWidget {
  final username_controller = TextEditingController();
  final usernum_controller = TextEditingController();
  final userstate_controller = TextEditingController();
  final useraadhar_controller = TextEditingController();
  final usercity_controller = TextEditingController();


  final userdata2 = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffeea),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(() => Homepage());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xFFfffeea),
        centerTitle: true,
        title: BoldText("Edit Aadhar Details", 20, Colors.black),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset("assets/images/81.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 30),
                        TextButton(
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 3,
                                ),
                                PlainText("Upload new photo", 15, Colors.black87),
                                SizedBox(
                                  height: 3,
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.fromLTRB(10, 15, 10, 15),
                                ),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.deepPurpleAccent),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        side: BorderSide(
                                            color: Colors.deepPurpleAccent)))),
                            onPressed: () => null),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 19,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: BoldText("Aadhar Details", 20, Colors.black),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        controller: username_controller,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Name
                      TextFormField(
                        controller: usernum_controller,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Contact number',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Email
                      TextFormField(
                        controller: userstate_controller,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'State',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ), //Number
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 260,
                          child: TextFormField(
                            controller: useraadhar_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Aadhar Number',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Country
                      TextFormField(
                        controller: usercity_controller,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'City',
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ), //City
                      Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.deepPurpleAccent,
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            String username = username_controller.text;
                            String usernum = usernum_controller.text;
                            String userstate = userstate_controller.text;
                            String useraadhar =
                                useraadhar_controller.text;
                            String usercity = usercity_controller.text;


                            userdata2.write('username', username);
                            userdata2.write('usernum', usernum);
                            userdata2.write('userstate', userstate);
                            userdata2.write('useraadhar', useraadhar);
                            userdata2.write('usercity', usercity);

                            Get.offAll(Saved2());
                          },
                          child: Text(
                            "Save",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}