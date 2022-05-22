import 'package:demo2/constants.dart';
import 'package:demo2/saved.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'edit_info.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  //Editing controllers
  final username_controller = TextEditingController();
  final usernum_controller = TextEditingController();
  final useremail_controller = TextEditingController();
  final userAadhar_controller = TextEditingController();
  final userBank_controller = TextEditingController();

  final userdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffeea),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {  Get.to(Edit());},
          icon: Icon( Icons.arrow_back,
            color: Colors.black,
          ),

        ),
        backgroundColor: Color(0xFFfffeea),
        title: BoldText("Profile",20,Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 7, 12, 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset("assets/images/81.png"),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          BoldText("Sapna", 20, Colors.black),
                          SizedBox( height: 9,),
                          PlainText("roman95181@gmail.com", 15, Colors.black87)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child:    PlainText("profile", 15, Colors.black87),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: Colors.deepPurpleAccent,
                    thickness: 3.5,
                  ),
                  SizedBox(
                    height: 15,
                  ),



                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 650,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 7, 18, 7),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BoldText("Background", 20, Colors.black),

                            ],
                          ),
                          TextFormField(
                            controller: username_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Name',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ), //Name
                          TextFormField(
                            controller: usernum_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Contact number',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: useremail_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'email number',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),//Contact Number
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 260,
                              child: TextFormField(
                                controller: userAadhar_controller,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Aadhar Number',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ), //Gender
                          TextFormField(
                            controller: userBank_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Bank Number',
                            ),
                          ),


                          SizedBox(
                            height: 15,
                          ), //Grade

                          SizedBox(
                            height: 25,
                          ), //School board
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  String username = username_controller.text;
                                  String usernum = usernum_controller.text;
                                  String useremail = useremail_controller.text;
                                  String userAadhar =
                                      userAadhar_controller.text;
                                  String userBank = userBank_controller.text;


                                  // if (username != '' &&
                                  //     usernum != '' &&
                                  //     usergender != '' &&
                                  //     userwork != '' &&
                                  //     useremail != '' &&
                                  //     usergrade != '' &&
                                  //     userboard != '') {
                                  // userdata.write('isSaved', true);
                                  userdata.write('username', username);
                                  userdata.write('usernum', usernum);
                                  userdata.write('useremail', useremail);
                                  userdata.write('userAadhar', userAadhar);
                                  userdata.write('userBank', userBank);

                                  Get.offAll(Saved());
                                  // } else {
                                  //   Get.snackbar(
                                  //       "Error", "All fields are required",
                                  //       snackPosition: SnackPosition.BOTTOM);
                                  // }
                                },
                                child: BoldText("Update",20,blue),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: PlainText("Cancel",20,grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}