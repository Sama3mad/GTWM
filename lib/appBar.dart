import 'package:flutter/material.dart';
import 'package:gtwm_project/Projects/projects_bottomsheet.dart';
import 'package:gtwm_project/styles/text_styles.dart';

class ProjectAppbar extends StatefulWidget implements PreferredSizeWidget {
  // Implement PreferredSizeWidget
  ProjectAppbar({super.key});

  @override
  State<ProjectAppbar> createState() => _ProjectAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(70);
}

class _ProjectAppbarState extends State<ProjectAppbar> {
  String selectedMenuItem = 'Projects';

  @override
  Widget build(BuildContext context) {
    
    void openOverlay() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return ProjectsBottomsheet();
        },
      );
    }

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
          PopupMenuButton(
            onOpened: (){
              setState(() {
                selectedMenuItem = 'projects';
              });
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Board')),
                PopupMenuItem(child: Text('Project details')),
                PopupMenuItem(child: Text('Project settings')),
                PopupMenuItem(child: Text('Project Report')),
              ];
            },
            child: Text(
              'Projects',
              style: selectedMenuItem == 'projects' ? AppTextStyles.selectedMenuItem : AppTextStyles.menuItem,
            ),
          ),
          // InkWell(
          //   child: Text(
          //     'Projects',
          //     style: AppTextStyles.selectedMenuItem,
          //   ),
          //   onTap: () {
          //     print('tapped');
          //   },
          // ),
          SizedBox(width: 20),
          InkWell(
            child: Text(
              'Tasks',
              style: selectedMenuItem == 'Tasks' ? AppTextStyles.selectedMenuItem : AppTextStyles.menuItem,
            ),
            onTap: () {
              setState(() {
                selectedMenuItem = 'Tasks';
              });
            },
          ),
          SizedBox(width: 20),
          InkWell(
            child: Text(
              'Teams',
              style: selectedMenuItem == 'Teams' ? AppTextStyles.selectedMenuItem : AppTextStyles.menuItem,
            ),
            onTap: () {
              setState(() {
                selectedMenuItem = 'Teams';
              });
            },
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: openOverlay,
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

  
}
