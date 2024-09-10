import 'package:flutter/material.dart';
import 'package:flutter_application/constants/constants.dart';
import 'package:flutter_application/ui/user_files.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      SizedBox(height: defaultPadding),
                      UserFiles(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    )
     );
  }
}