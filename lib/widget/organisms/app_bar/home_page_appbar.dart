import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/list_course_page/list_course_page.dart';
import 'package:gr1_flutter/screens/setting_page/setting_page.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  HomePageAppBar({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0,
      leading: Container(),
      title: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder:
                  (context, animation, secondaryAnimation) => ListCoursePage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                const curve = Curves.ease;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        },
        child: Container(
            padding: const EdgeInsets.only(left: 5),
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingPage()));
            },
            icon: Icon(Icons.search,size: Theme.of(context).iconTheme.size,color: Theme.of(context).iconTheme.color,)
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
