import 'package:flutter/material.dart';

class NonTitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  Function()? onPressed;

  NonTitleAppBar({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: Theme.of(context).appBarTheme.elevation,
      leading: IconButton(
          icon: IconTheme(
              data: Theme.of(context).appBarTheme.iconTheme!,
              child: const Icon(Icons.arrow_back_ios,size: 20,)),
          onPressed: onPressed),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
