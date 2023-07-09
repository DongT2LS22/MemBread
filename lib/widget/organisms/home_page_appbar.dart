import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  HomePageAppBar({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          print("Hello world");
        },
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 1 / 2,
            child: Row(
              children: [
                Text(title,
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  size: Theme.of(context).iconTheme.size,
                  color: Theme.of(context).iconTheme.color,
                )
              ],
            )),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings,size: 20,color: Theme.of(context).iconTheme.color,)
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
