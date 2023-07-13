import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practice_application_3/screens/second_screen.dart';

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Website'),
        actions: [
          TextButton(
            onPressed: () {
              _scrollToIndex(context, 0); // Scroll to the first screen
            },
            child: Text('Home'),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              _scrollToIndex(context, 1); // Scroll to the second screen
            },
            child: Text('About'),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              _scrollToIndex(context, 2); // Scroll to the third screen
            },
            child: Text('Contact Us'),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              _scrollToIndex(context, 3); // Scroll to the fourth screen
            },
            child: Text('Gallery'),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,  
        controller: _scrollController,
        child: Column(
        children: [
          SecondScreen(),
          _buildScreen(context,'Second', Colors.green),
          _buildScreen(context,'Third', Colors.grey),
          _buildScreen(context,'Fourth', Colors.orange),
        ],

        ),
      ),
    );
  }

  void _scrollToIndex(BuildContext context, int index) {
    final RenderObject? renderObject =
        context.findRenderObject(); // Find the current context's render object
    final screenHeight = MediaQuery.of(context).size.height;

    // Scroll to the position of the selected screen
    _scrollController.animateTo(
      screenHeight * index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildScreen(BuildContext context,String title, Color color) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: color,
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}