import 'package:flutter/material.dart';

class FlashCardAppbar extends StatelessWidget implements PreferredSizeWidget {
  Function()? onPressed;
  String progress;
  FlashCardAppbar({Key? key, this.onPressed, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: Theme.of(context).appBarTheme.elevation,
      leading: IconButton(
          icon: IconTheme(
              data: Theme.of(context).appBarTheme.iconTheme!,
              child: const Icon(Icons.arrow_back_ios)),
          onPressed: onPressed),
      title: Text(progress,style: Theme.of(context).appBarTheme.titleTextStyle,),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
