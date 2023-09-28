import 'package:flutter/material.dart';

class CloseTitleAppbar extends StatelessWidget implements PreferredSizeWidget {
  Function()? onPressed;
  List<Widget>? actions;
  CloseTitleAppbar({Key? key, this.onPressed,this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: Theme.of(context).appBarTheme.elevation,
      leading: IconButton(
          icon: IconTheme(
              data: Theme.of(context).appBarTheme.iconTheme!,
              child: const Icon(Icons.close)),
          onPressed: onPressed),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}