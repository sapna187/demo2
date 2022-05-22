import 'package:demo2/homePage.dart';
import 'package:demo2/saved2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'constants.dart';
import 'main.dart';

class Edit extends StatelessWidget {

  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final number_controller = TextEditingController();
  final Aadhar_controller = TextEditingController();
  final Bank_controller = TextEditingController();

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
        title: BoldText("Edit Information", 20, Colors.black),
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
                        child: BoldText("About me", 20, Colors.black),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        controller: name_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Name
                      TextFormField(
                        controller: email_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Email
                      TextFormField(
                        controller: number_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Contact number',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ), //Number
                      TextFormField(
                        controller: Aadhar_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Aadhar',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Country
                      TextFormField(
                        controller: Bank_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Bank Number",
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
                            String name = name_controller.text;
                            String email = email_controller.text;
                            String number = number_controller.text;
                            String aadhar = Aadhar_controller.text;
                            String bank = Bank_controller.text;

                            userdata2.write('name', name);
                            userdata2.write('email', email);
                            userdata2.write('number', number);
                            userdata2.write('Aadhar Number', aadhar);
                            userdata2.write('Bank Number', bank);

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