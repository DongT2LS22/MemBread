import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/card/primary_card.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryCard(
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: [
            Container(
              width: 40,
              height: 40,
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
            const SizedBox(width: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Elon musk",style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,),
                Text("200",style: Theme.of(context).textTheme.titleSmall,)
              ],
            )
          ],
        )
    );
  }
}
