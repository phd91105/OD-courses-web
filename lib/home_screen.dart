import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ongdev_courses/constaints.dart';
import 'package:ongdev_courses/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  constraints: BoxConstraints(minWidth: 360),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: primaryBGColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/logo.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          Text(
                            'Course Manager',
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              color: titleColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      MenuItem(
                        icon: Feather.grid,
                        title: 'Home',
                        isSelected: true,
                      ),
                      MenuItem(
                        icon: Feather.bar_chart_2,
                        title: 'Progress',
                        isSelected: false,
                      ),
                      MenuItem(
                        icon: Feather.message_circle,
                        title: 'Messages',
                        isSelected: false,
                      ),
                      MenuItem(
                        icon: Feather.settings,
                        title: 'Settings',
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryBGColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 78),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(
                                flex: 8,
                              ),
                              SearchBar(),
                              Spacer(
                                flex: 3,
                              ),
                              Icon(
                                Feather.user,
                                color: Color(0xffFFB347),
                                size: 32,
                              ),
                              Spacer(
                                flex: 8,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              'Courses',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                color: titleColor,
                              ),
                            ),
                            Spacer(
                              flex: 8,
                            ),
                            Icon(
                              Feather.more_horizontal,
                              size: 27,
                              color: titleColor,
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CourseItem(),
                            SizedBox(
                              width: 69,
                            ),
                            CourseItem(),
                            SizedBox(
                              width: 69,
                            ),
                            CourseItem(),
                          ],
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CourseItem(),
                            SizedBox(
                              width: 69,
                            ),
                            CourseItem(),
                            SizedBox(
                              width: 69,
                            ),
                            CourseItem(),
                          ],
                        ),
                        SizedBox(
                          height: 37,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      height: MediaQuery.of(context).size.height / 2.8,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/1.png',
          ),
          fit: BoxFit.cover,
        ),
        // color: odColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 60,
          //     width: 300,
          //     color: Colors.greenAccent,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    this.title,
    this.icon,
    this.isSelected,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        height: 60,
        decoration: isSelected
            ? BoxDecoration(
                color: primaryBGColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              )
            : BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 6),
          child: ListTile(
            leading: Icon(
              icon,
              color: odColor,
            ),
            title: Text(
              title,
              style: GoogleFonts.getFont(
                'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: odColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
