import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/card/profile_card.dart';

import '../../../widget/molecules/buttons/primary_text_button.dart';

class Rank extends StatelessWidget {
  const Rank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
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
              height: 30,
            ),
            Text(
              "Leaderboard",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                ProfileCard(score: 200, name: "Elon musk",),
                const SizedBox(height: 5,),
              ],
            )
          ],
        ),
      )
    );
  }
}
