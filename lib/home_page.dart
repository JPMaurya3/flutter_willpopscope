import 'package:flutter/material.dart';

import 'content_view.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("HOME VIEW",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color:Colors.black

            ),),
            TextButton(
                style:ButtonStyle(
                  backgroundColor:MaterialStateProperty.all<Color>(Colors.blue)
                ),
                onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContentView()));
            },
              child: const Text("Go to contentView",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color:Colors.black),)
            )
          ],
        ),
      ),
    );
  }
}
