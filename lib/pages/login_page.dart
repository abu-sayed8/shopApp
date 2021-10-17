import 'package:flutter/material.dart';
import 'package:shopapp/shared/form_decoration.dart';
import 'package:shopapp/widgets/button_widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: _bodyUi(),
    );
  }
  Widget _bodyUi(){
    final Size size=MediaQuery.of(context).size;
    return ListView(
        children: [
          Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: FormDecoration.copyWith(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(fontSize: size.width/18,fontWeight: FontWeight.w800)
                    ),
                    onChanged: (val){
                      setState(() {
                        print ("this is phone number");
                      });
                    },


                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: FormDecoration.copyWith(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: size.width/18,fontWeight: FontWeight.w800)
                    ),
                    onChanged: (val){
                      setState(() {
                        print ("this is phone number");
                      });
                    },


                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>)),
                    child: button(context, 'Login Now'),
                  )
                ],
              )
          )
        ],
      );
  }
}
