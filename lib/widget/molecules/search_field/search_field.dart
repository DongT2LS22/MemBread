import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14),
      height: 52,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Theme.of(context).iconTheme.color,
            size: 25,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: TextFormField(
                autofocus: false,
                cursorColor: Theme.of(context).iconTheme.color,
                style: Theme.of(context).textTheme.displayMedium,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    hintText: "Search",
                    hintStyle: Theme
                        .of(context)
                        .textTheme
                        .displayMedium,
                    hintTextDirection: TextDirection.ltr,
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Theme.of(context).colorScheme.background, width: 0)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Theme.of(context).colorScheme.background, width: 0)),
                ),
              )),
        ],
      ),
    );
  }
}
