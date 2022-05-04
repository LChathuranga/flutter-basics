import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String name;

  Widget _buildNameField()=> TextFormField(
      decoration: const InputDecoration(
        hintText: "Name",
      ),
      validator: (text){
        if(text!.isEmpty){
          return 'Name cannot be empty';
        }
        return null;
      },
      onSaved: (text){
        name = text!;
      },
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form App'),
      ),
      //this singlechiled... view is for scrolling the form
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                _buildNameField(),
                const SizedBox(
                  height: 100.0,
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        _formKey.currentState!.save();
                        print(name);
                      }
                      },
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
