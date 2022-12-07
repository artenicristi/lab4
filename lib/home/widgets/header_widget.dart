import 'package:flutter/material.dart';

import '../../../resources/strings.dart';
import '../../../resources/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:16.0, bottom: 16, left: 16, right: 16),
      //decoration: BoxDecoration(border: Border.all(color: Colors.deepOrangeAccent),),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.poppins18(),
          ),
          Text(
            Strings.seeAll,
            style: TextStyles.poppins14(),
          ),
        ],
      ),
    );
  }
}
