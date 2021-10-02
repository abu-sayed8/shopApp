import 'package:flutter/material.dart';
import 'package:shopapp/shared/form_decoration.dart';
import 'package:shopapp/widgets/button_widgets.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        centerTitle: true,
      ),
      body: _bodyUi(),
    );
  }
  Widget _bodyUi(){
    final Size size=MediaQuery.of(context).size;
    return Container(
      child: ListView(
          children: [
            Column(
              children: [
                Text(
                  "Your phone number is not recognized yet.",
                  style: TextStyle(
                      color: Colors.grey[700], fontSize: size.width / 21),
                ),
                Text(
                  "Let us know basic details for registration.",
                  style: TextStyle(
                      color: Colors.grey[700], fontSize: size.width / 21),
                ),
              ],
            ),
            SizedBox(height: size.width / 8),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    _textFieldBuilder('Full Name'),
                    SizedBox(height: size.width/21),
                    _textFieldBuilder('Phone Number'),
                    SizedBox(height: size.width/21),
                    _textFieldBuilder('Password'),
                    SizedBox(height: size.width/21),
                    GestureDetector(
                      //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>)),
                      child: button(context, 'Continue'),
                    )
                  ],
                )
            )
          ],
      ),
    );
  }
  Widget _textFieldBuilder(String hint){
    return TextFormField(
      scrollPadding: EdgeInsets.only(left: 10,right: 10),
      keyboardType: hint=='Full Name'?TextInputType.text
      :hint=='Phone Number'?TextInputType.phone
      :TextInputType.visiblePassword,
      decoration: FormDecoration.copyWith(
        //hintText: 'Name',
        labelText: hint,
        hintStyle: TextStyle(color: Colors.red),
      ),
      onChanged: (val){
        setState(() {
          print ("this is phone number");
        });
      },


    );
  }
}
