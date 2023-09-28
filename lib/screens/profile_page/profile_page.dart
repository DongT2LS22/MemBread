import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/personal_edit_page/personal_edit_page.dart';
import 'package:gr1_flutter/widget/molecules/buttons/primary_text_button.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/close_title_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CloseTitleAppbar(
        onPressed: () => Navigator.pop(context),
        actions: [
          IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalEditPage()));}, icon: const Icon(Icons.edit))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/elon-musk.png'),
                          fit: BoxFit.cover,
                        ),
                        border: const Border(
                          bottom: BorderSide(color: Colors.grey),
                          top: BorderSide(color: Colors.grey),
                          left: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            size: 17,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Elon Musk",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Theme.of(context).dividerColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "1000",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Follower",
                        style: Theme.of(context).textTheme.displaySmall,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 1,
                  height: 50,
                  child: Container(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "1000",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Following",
                        style: Theme.of(context).textTheme.displaySmall,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 1,
                  height: 50,
                  child: Container(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "1000",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lifetime XP",
                        style: Theme.of(context).textTheme.displaySmall,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryTextButton(
                  text: "Follow",
                  width: MediaQuery.of(context).size.width / 2 - 40,
                ),
                PrimaryTextButton(
                  text: "Message",
                  width: MediaQuery.of(context).size.width / 2 - 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
