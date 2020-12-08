import 'package:flutter/material.dart';
import 'package:managergasuser/screens/home_page.dart';
import 'package:managergasuser/theme/colors.dart';

class AddUser extends StatefulWidget {
  AddUser({Key key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
   TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
   TextEditingController addressController = TextEditingController();
  TextEditingController gasTypeController = TextEditingController();
   TextEditingController priceController = TextEditingController();
  TextEditingController statusController = TextEditingController();
   TextEditingController dateStartController = TextEditingController();
  TextEditingController numberDaysUseController = TextEditingController();

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text("ADD USER")),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(2, 10, 2, 5),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60.0,
                  child: ClipOval(
                    child: Image.asset("assets/images/img/alan.png"),
                  ),
                ),
                SizedBox(
                height: 20,
              ),
                _buildTextField(usernameController, Icons.person, "User name"),
                SizedBox(
                height: 20,
              ),
                _buildTextField(phoneController, Icons.phone, "Phone"),
                SizedBox(
                height: 20,
              ),
                _buildTextField(addressController, Icons.person_pin_circle, "Address"),
                SizedBox(
                height: 20,
              ),
                _buildTextField(gasTypeController, Icons.settings_ethernet, "Gas Type"),
                SizedBox(
                height: 20,
              ),
                _buildTextField(priceController, Icons.monetization_on, "Price"),
                SizedBox(
                height: 20,
              ),
                _buildTextField(statusController, Icons.speaker_notes, "Status"),
                SizedBox(
                height: 20,
              ),
                _buildTextField(dateStartController, Icons.date_range, "Date Start"),
                SizedBox(
                height: 20,
              ),
                _buildTextField(numberDaysUseController, Icons.add_comment, "Number days use"),
                SizedBox(
                height: 20,
              ),
              MaterialButton(
                elevation: 0,
                minWidth: width*0.9,
                
                height: 50,
                onPressed:() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                },
                color: loginGreen,
                child: Text('ADD USER',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                textColor: Colors.white,
              ),
                

              ],
            ),
          ),
        ),
      ),
    );
  }
    _buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
        double width = MediaQuery.of(context).size.width;
    return Container(
      width:  width* 0.9,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white10, border: Border.all(color: Colors.blue)),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.black),
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );
      }
  onAddUser() {
    print("Add success");
  }

}
