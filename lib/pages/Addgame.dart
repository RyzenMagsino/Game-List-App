import 'package:flutter/material.dart';

class Addgame extends StatefulWidget {
  const Addgame({super.key});

  @override
  State<Addgame> createState() => _AddgameState();
}

final _formKey = GlobalKey<FormState>();
String _name = '';
String _description = '';
int _rating = 0;

class _AddgameState extends State<Addgame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('Add Work'),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    labelText: 'Male or Female?',
                  ),


                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please add a name';
                    }
                    return null;
                  }




                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    labelText: 'Are you Dark or Super Dark?',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      labelText: 'Do You Have Stinky Smell or Killer Smell?'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {

                    if (_formKey.currentState!.validate()){
                      print('The form is Validated');
                    }




                    // Action when Save is tapped
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue[300],
                  ),
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}