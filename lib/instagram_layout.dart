import 'package:flutter/material.dart';

import 'user_profile.dart';

class InstagramLayout extends StatelessWidget {
  const InstagramLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
    );
  }
}
