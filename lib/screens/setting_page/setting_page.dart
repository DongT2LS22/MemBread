import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/profile_page/profile_page.dart';
import 'package:gr1_flutter/screens/welcome_page/welcome_page.dart';
import 'package:gr1_flutter/widget/molecules/card/setting_card.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/title_appbar.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: TitleAppbar(
        onPressed: () => Navigator.pop(context),
        title: Text("Settings",style: Theme.of(context).textTheme.titleMedium,),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            SettingCard(
              icon: Icons.person,
              content: "Profile",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage())),
            ),
            const SizedBox(
              height: 10,
            ),
            SettingCard(
              icon: Icons.light_mode,
              content: "Screen mode",
              haveToggleButton: true,
            ),
            const SizedBox(
              height: 10,
            ),
            SettingCard(
              icon: Icons.notifications,
              content: "Notification",
            ),
            const SizedBox(
              height: 10,
            ),
            SettingCard(
              icon: Icons.help,
              content: "Help center",
            ),
            const SizedBox(
              height: 10,
            ),
            SettingCard(
              icon: Icons.info,
              content: "About membread",
            ),
            const SizedBox(
              height: 10,
            ),
            SettingCard(
              icon: Icons.logout,
              content: "Logout",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomePage())),
            )
          ],
        ),
      ),
    );
  }
}
