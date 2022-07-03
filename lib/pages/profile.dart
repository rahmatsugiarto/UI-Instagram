import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_instagram/widgets/story_item.dart';
import 'package:ui_instagram/widgets/story_item_add.dart';

import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';
import '../widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (light icons)
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: <Widget>[
            Text(
              'irahmatsugiarto_',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.black)
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(title: "Posts", value: "100"),
                      InfoItem(title: "Followers", value: "651"),
                      InfoItem(title: "Following", value: "15"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Rahmat Sugiarto',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text: "Mobile Developer(Android & Flutter) at Telkomsigma ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "#Flutter #Android #MobileDeveloper",
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "rahmatsugiarto.app/",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Icon(Icons.person_add_alt_1_outlined,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoryItemAdd(),
                      StoryItem(title: "Jalan", numPhoto: 1),
                      StoryItem(title: "Healing", numPhoto: 2),
                      StoryItem(title: "Deep talk", numPhoto: 3),
                      StoryItem(title: "Bestie", numPhoto: 4),
                      StoryItem(title: "Sleep Call", numPhoto: 6),
                    ],
                  ))),
          SizedBox(height: 15),
          Row(
            children: [
              TabItem(icon: Icons.grid_on_outlined, isActive: true),
              TabItem(icon: Icons.person_pin_outlined),
            ],
          ),
          GridView.builder(
            itemCount: 100,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) => Container(
              child: Image.network(
                "https://picsum.photos/id/${151 + index}/200/300",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_rounded),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {},
      ),
    );
  }
}
