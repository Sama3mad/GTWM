import 'package:flutter/material.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class ProjectAppbar extends StatelessWidget implements PreferredSizeWidget { // Implement PreferredSizeWidget
  const ProjectAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image(image: AssetImage('assets/gammal_tech_logo.png')),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 5),
          InkWell(
            child: Text(
              'Projects',
              style: AppTextStyles.selectedMenuItem,
            ),
            onTap: () {
              print('tapped');
            },
          ),
          SizedBox(width: 20),
          InkWell(
            child: Text(
              'Tasks',
              style: AppTextStyles.menuItem,
            ),
            onTap: () {
              print('tapped');
            },
          ),
          SizedBox(width: 20),
          InkWell(
            child: Text(
              'Teams',
              style: AppTextStyles.menuItem,
            ),
            onTap: () {
              print('tapped');
            },
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            size: 30,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/Sama.JPG'),
          ),
        ),
      ],
      backgroundColor: Color.fromARGB(255, 0, 128, 129),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70); 
}
