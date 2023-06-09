// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewClasses extends StatelessWidget {
  const ViewClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            body(context),
          ],
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    return Expanded(
      child: GridView.count(
        shrinkWrap: true,
        //itemCount: categoryList.length,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 24,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4.0,
                      spreadRadius: 0.05),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/delete.png',
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Delete Class',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4.0,
                      spreadRadius: 0.05),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/adding.png',
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Add Class',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
