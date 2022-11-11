import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';

class RichtextWidget extends StatelessWidget {
  const RichtextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.clip,
      textAlign: TextAlign.end,
      textDirection: TextDirection.rtl,
      softWrap: true,
      maxLines: 1,
      textScaleFactor: 1,
      text: TextSpan(
        text: 'Pushups  ',
        style: AppTextStyles.h1
            .copyWith(fontSize: 24, fontWeight: FontWeight.w500),
        children: <TextSpan>[
          TextSpan(
            text: '(10k Views)',
            style: AppTextStyles.h3.copyWith(
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
