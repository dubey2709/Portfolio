import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class Connect extends StatefulWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  final _formKey = GlobalKey<FormState>();

  Future sendEmail(String name, String email, String message) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_r4tvzwf';
    const templateId = 'template_ge35ojc';
    const userId = 'H2VZ3ELB1891VNYvO';
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'from_name': name,
            'from_email': email,
            'message': message
          }
        }));
    return response.statusCode;
  }

  bool ishover = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width =
        screenSize.width < 900 ? screenSize.width * 2 : screenSize.width;
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(
          screenSize.width < 900 ? 0.02 * width : 0.097 * width, 12, 12, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Connect with Me 😎',
              textScaleFactor: 1,
              style: style1.copyWith(fontSize: 0.021 * width)),
          SizedBox(height: 0.014 * width),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.055 * width,
                  width: 0.400 * width,
                  child: TextFormField(
                    cursorWidth: 1,
                    cursorColor: Colors.black,
                    controller: nameController,
                    textAlignVertical: TextAlignVertical.center,
                    style:
                        TextStyle(color: Colors.black, fontSize: 0.013 * width),
                    decoration: decor.copyWith(hintText: 'Enter your Name'),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                    height:
                        screenSize.width < 900 ? 0.01 * width : 0.007 * width),
                SizedBox(
                  height: 0.055 * width,
                  width: 0.400 * width,
                  child: TextFormField(
                    cursorWidth: 1,
                    cursorColor: Colors.black,
                    controller: emailController,
                    textAlignVertical: TextAlignVertical.center,
                    style:
                        TextStyle(color: Colors.black, fontSize: 0.013 * width),
                    decoration: decor.copyWith(hintText: 'Enter your Email'),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                    height:
                        screenSize.width < 900 ? 0.01 * width : 0.007 * width),
                SizedBox(
                  height: 0.110 * width,
                  width: 0.400 * width,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    cursorWidth: 1,
                    controller: messageController,
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 4,
                    style:
                        TextStyle(color: Colors.black, fontSize: 0.013 * width),
                    decoration: decor.copyWith(hintText: 'Write your Message'),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 0.007 * screenSize.width),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? ishover = true : ishover = false;
                    });
                  },
                  onTap: () async {},
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 0.018 * width,
                            vertical: 0.009 * width)),
                        backgroundColor: MaterialStateProperty.all(
                            ishover ? Colors.teal : Color(0xFF26B072)),
                        elevation: MaterialStateProperty.all(5.00),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.006 * width),
                        ))),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final response = await sendEmail(
                            nameController.value.text,
                            emailController.value.text,
                            messageController.value.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                          response == 200
                              ? EmailValidator.validate(emailController.text)
                                  ? const SnackBar(
                                      content: Text('Message Sent!',
                                          textScaleFactor: 1),
                                      backgroundColor: Color(0xFF26B072),
                                    )
                                  : const SnackBar(
                                      content: Text('Email Not Valid!',
                                          textScaleFactor: 1),
                                      backgroundColor: Color(0xFF26B072),
                                    )
                              : const SnackBar(
                                  content: Text(
                                    'Failed to send message!',
                                    textScaleFactor: 1,
                                  ),
                                  backgroundColor: Color(0xFF26B072),
                                ),
                        );
                        nameController.clear();
                        emailController.clear();
                        messageController.clear();
                      }
                    },
                    child: Text('Send',
                        textScaleFactor: 1,
                        style: style2.copyWith(fontSize: 0.016 * width)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
