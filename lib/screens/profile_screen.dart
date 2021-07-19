import 'package:carihotel_app/screens/add_data_screen.dart';
import 'package:carihotel_app/theme.dart';
import 'package:carihotel_app/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/profile_image.png', width: 120),
                SizedBox(height: 10),
                Text('Muhammad Fadli Syukur', style: header2),
                SizedBox(height: 2),
                Text('mfadlisy@gmail.com', style: subTitle1),
                SizedBox(height: 25),
                GestureDetector(
                  child: ProfileMenu(
                    icon: 'assets/icons/edit_profile.svg',
                    text: 'Edit Profile',
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: greyColor.withOpacity(0.15),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: ProfileMenu(
                    icon: 'assets/icons/settings.svg',
                    text: 'Settings',
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: greyColor.withOpacity(0.15),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: ProfileMenu(
                    icon: 'assets/icons/help_centre.svg',
                    text: 'Help Center',
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: greyColor.withOpacity(0.15),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: ProfileMenu(
                    icon: 'assets/icons/rate.svg',
                    text: 'Rate Cari Hotel App',
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: greyColor.withOpacity(0.15),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: ProfileMenu(
                    icon: 'assets/icons/add_data.svg',
                    text: 'Add Data',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddDataScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: greyColor.withOpacity(0.15),
                ),
                GestureDetector(
                  child: ProfileMenu(
                    icon: 'assets/icons/logout.svg',
                    text: 'Log Out',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddDataScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
