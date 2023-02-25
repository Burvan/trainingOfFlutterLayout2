import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _MyAppBar(),
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      child: Container(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        Text(
                          '6',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          'Публикаций',
                          style: TextStyle(
                              color: Colors.white,  fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          '271',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          'Подписчи...',
                          style: TextStyle(
                              color: Colors.white,  fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          '163',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          'Подписки',
                          style: TextStyle(
                              color: Colors.white,  fontSize: 15),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const _MyAppBar({
    super.key,
  });
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(children: const [
        Expanded(
          child: Text(
            '_burbon___',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Icon(
          Icons.add_box_outlined,
          size: 25,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.menu, size: 25)
      ]),
    );
  }
}

// actions: const <Widget>[
// Expanded(
// child: Text(
// '_burbon___',
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold
// ),
// textAlign: TextAlign.center,
// ),
// ),
// Icon(Icons.add_box_outlined, color: Colors.white),
// Icon(Icons.menu, color: Colors.white,)
// ],
