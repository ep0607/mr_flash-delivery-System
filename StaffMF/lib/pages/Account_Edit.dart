import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hero_drawer/util/global.dart';
import 'account.dart';

class AccEdit extends StatefulWidget {

  static String tag = 'add-page';
  @override
  _AccountPageState createState() => new _AccountPageState();
}


class _AccountPageState extends State<AccEdit> {
  final _formKey = GlobalKey<FormState>();
  final _cName = TextEditingController();
  final _cAddress = TextEditingController();
  final _cPhoneNumber = TextEditingController();
  final _cEmail = TextEditingController();
  final _cPassword = TextEditingController();
  final _conPassword = TextEditingController();
  static final name="Mg Mg";
  static final email="mg@gmail.com";
  static final password="****";
  static final address="(3/39) Bogyoke Street, Yedashe";
  static final phone="09773322115";

  void initState() {
    _cName.text = name;
    _cAddress.text = email;
    _cPassword.text = password;
    _conPassword.text = password;
    _cEmail.text = address;
    _cPhoneNumber.text=phone;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    TextFormField inputName = TextFormField(
      controller: _cName,
      autofocus: true,
      keyboardType: TextInputType.text,
      inputFormatters: [
        LengthLimitingTextInputFormatter(45),
      ],
      decoration: InputDecoration(
        labelText: 'User Name',
        icon: Icon(Icons.person, color:appColor,),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Obrigatório';
        }
        return null;
      },
    );

    TextFormField inputPassword = TextFormField(
      controller: _cPassword,
      keyboardType: TextInputType.text,
      inputFormatters: [
        LengthLimitingTextInputFormatter(25),
      ],
      decoration: InputDecoration(
        labelText: 'Password',
        icon: Icon(Icons.lock, color:appColor,),
      ),
    );

    TextFormField conPassword = TextFormField(
      controller: _conPassword,
      keyboardType: TextInputType.text,
      inputFormatters: [
        LengthLimitingTextInputFormatter(25),
      ],
      decoration: InputDecoration(
        labelText: 'Password',
        icon: Icon(Icons.lock, color:appColor,),
      ),
    );

    TextFormField inputPhoneNumber = TextFormField(
      controller: _cPhoneNumber,
      inputFormatters: [
        LengthLimitingTextInputFormatter(45),
      ],
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Phone No.',
        icon: Icon(Icons.phone,color:appColor,),
      ),
    );

    TextFormField inputAddress = TextFormField(
      controller: _cAddress,
      inputFormatters: [
        LengthLimitingTextInputFormatter(45),
      ],
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Address',
        icon: Icon(Icons.home,color: appColor,),
      ),
    );

    /*MaskedTextField inputPhoneNumber = new MaskedTextField(
      maskedTextFieldController: _cPhoneNumber,
      mask: "(xxx) xxxxx-xxxx",
      maxLength: 16,
      keyboardType: TextInputType.phone,
      inputDecoration: new InputDecoration(
        labelText: "Telephone",
        icon: Icon(Icons.phone),
      ),
    );
*/
    TextFormField inputEmail = TextFormField(
      controller: _cEmail,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
      ],
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'E-mail',
        icon: Icon(
          Icons.email,
          color:appColor,
        ),

      ),
    );

    /*TextFormField inputWebSite = TextFormField(
      controller: _cWebSite,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
      ],
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Website',
        icon: Icon(Icons.web),
      ),
    );*/

    final picture = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 120.0,
          height: 120.0,
          child: CircleAvatar(
              backgroundColor: appColor,
              child: Container(
                decoration: new BoxDecoration(
                  color: appColor,
                  image: new DecorationImage(
                    image: new ExactAssetImage("images/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              )
          ),
        ),
      ],
    );

    ListView content = ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        SizedBox(height: 20),
        picture,
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              inputName,
              Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              inputPassword,
              Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              conPassword,
              Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              inputPhoneNumber,
              Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              inputEmail,
              Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              inputAddress,
              //inputWebSite,
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text("Account Edit"),
        actions: <Widget>[
          Container(
            width: 80,
            child: IconButton(
              icon: Text( 'SAVE', style: TextStyle(fontWeight: FontWeight.bold), ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Account())
                );
              },
            ),
          )
        ],
      ),
      body: content,
    );
  }
}
