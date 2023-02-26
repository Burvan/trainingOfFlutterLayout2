import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);

  final List<ProfileColumnData> profileColumn = [
    ProfileColumnData('6', 'Posts'),
    ProfileColumnData('270', 'Followers'),
    ProfileColumnData('163', 'Following'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _MyAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Row(
              children: [
                _AvatarWidget(),
                _ProfileWidget(profileColumn: profileColumn),
              ],
            ),
          ),
          _MainInformationWidget()
        ],
      ),
    );
  }
}

class _MainInformationWidget extends StatelessWidget {
  const _MainInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Илья Бурван',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: 3),
            Text(
              'Athlete',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 3),
            Text(
              'Просто сбился с пути...',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10, bottom: 10, right: 30, left: 25
      ),
      child: Container(
        width: 80,
        height: 80,
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/avatar.jpg'),
        ),
      ),
    );
  }
}

class ProfileColumnData {
  final String textOne;
  final String textTwo;

  ProfileColumnData(this.textOne, this.textTwo);
}

class _ProfileWidget extends StatelessWidget {
  final List<ProfileColumnData> profileColumn;
  const _ProfileWidget({Key? key, required this.profileColumn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisSize: MainAxisSize.max,
      //mainAxisAlignment: MainAxisAlignment.end,
      children: profileColumn
          .map((data) => _ProfileColumnWidget(data: data))
          .toList(),
    );
  }
}

class _ProfileColumnWidget extends StatelessWidget {
  final ProfileColumnData data;
  const _ProfileColumnWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.,
        children: [
          Text(
            data.textOne,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            data.textTwo,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
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

