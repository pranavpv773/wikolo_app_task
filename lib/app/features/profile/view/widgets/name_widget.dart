import 'package:flutter/material.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "@$name",
            style: AppTextStyles.h2,
          ),
          const Visibility(
            child: Icon(
              Icons.check_circle,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
