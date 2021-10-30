import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1f1f1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1f1f1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF22215B),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      child: Image.asset(
                        "assets/images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF22215B).withOpacity(0.6),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/plus.png"),
                      Image.asset("assets/icons/setting.png"),
                      Image.asset("assets/icons/panah-kanan-2.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder-415EB6.png"),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFF415EB6),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder-FFB110.png"),
                  title: "SVG Icons",
                  date: "December 14.2020",
                  color: Color(0xFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder-AC4040.png"),
                  title: "Prototypes",
                  date: "Novemaber 22.2020",
                  color: Color(0xFFAC4040),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder-23B0B0.png"),
                  title: "Avatars",
                  date: "Novemaber 10.2020",
                  color: Color(0xFF23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset("assets/icons/sort.png"),
              ],
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset(
                "assets/icons/word.png",
                fit: BoxFit.cover,
              ),
            ),
            title: Text("Projects.docx"),
            subtitle: Text("Novemaber 22.2020"),
            trailing: Text("300kb"),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
          SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              fontSize: 12,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
