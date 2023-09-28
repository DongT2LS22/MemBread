import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';

import '../../widget/molecules/search_field/search_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? _stringValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _stringValue = _stringValue ?? "Schedule";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(),
      body:  Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SearchField(),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
