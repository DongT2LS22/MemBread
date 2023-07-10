import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/study_page/flash_card/flash_card_page.dart';

class FlashCardAppbar extends StatefulWidget implements PreferredSizeWidget {
  Function()? onPressed;
  FlashCardAppbar({Key? key, this.onPressed}) : super(key: key);

  @override
  State<FlashCardAppbar> createState() => _FlashCardAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _FlashCardAppbarState extends State<FlashCardAppbar> {
  late int _index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _index = FlashCardInherited.of(context)!.index;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: Theme.of(context).appBarTheme.elevation,
      leading: IconButton(
          icon: IconTheme(
              data: Theme.of(context).appBarTheme.iconTheme!,
              child: const Icon(Icons.arrow_back_ios)),
          onPressed: widget.onPressed),
      title: Text("$_index/4" ,style: Theme.of(context).appBarTheme.titleTextStyle,),
      centerTitle: true,
    );
  }
}
