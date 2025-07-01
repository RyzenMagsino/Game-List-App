import 'package:flutter/material.dart';

class Addgame extends StatefulWidget {
  const Addgame({super.key});

  @override
  State<Addgame> createState() => _AddgameState();
}

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