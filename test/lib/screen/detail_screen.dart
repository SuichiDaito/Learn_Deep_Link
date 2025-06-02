import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("This is Detail Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is Detail Screen "),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 2,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text("Return home screen"),
            ),
          ],
        ),
      ),
    );
  }
}
