import 'package:flutter/material.dart';

import '../../../models/scramble.dart';

import 'search_field.dart';
import 'scramble_info.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SearchField(),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 5.0),
          child: ValueListenableBuilder<List>(
            valueListenable: scrambles,
            builder: (context, value, widget) {
              return GridView.count(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2.5,
                padding: EdgeInsets.zero,
                children: scrambles.value.asMap().map(
                  (key, value) => MapEntry(key, ScrambleInfo(scramble: value))
                ).values.toList(),
              );
            }
          )
        ),
      ],
    );
  }
}
