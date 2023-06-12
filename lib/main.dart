import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Login Page';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Center(child: Image(image: AssetImage('assets/FlutterImage.png'),height: 150,width: 300,)),
        const Padding(  
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
        ),
        Center(
  child: TextButton(
    onPressed: () {
      // Button action
    },
    child:const Text('Forgot Password'),
  ),
),

Center(
  child: ElevatedButton(
    onPressed: () {
      // Button action
    },
    child:const  Text('Login',style:TextStyle(color:Colors.white,fontSize: 25)),
  ),
),

Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: MaterialButton(
              onPressed: () => {},
              child: const Text( 'New User?Create Account'),
            ),
          ),
        ),



      ],
    );





        
  }
}