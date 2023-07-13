// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_application_3/screens/second_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController;
    _scrollController.addListener(() {
      print(_scrollController.offset);
    });
  }

  @override
  
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: size.height,
              width: size.width,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Text('HOME'),),
                  InkWell(
                    onTap:(){
                      setState(() {
                        SecondScreen();
                      });
                    },
                    child: Text('ABOUT')),
                  Text('GALLERY'),
                  Text('Contact'),
                ],
              ),
            ),
            SecondScreen(),
            Container(
              height: size.height,
              width: size.width,
              color: Colors.white54,
            ),
      
          ],
        ),
      ),
    );
  }
}