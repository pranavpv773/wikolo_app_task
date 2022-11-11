import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';

import 'textform_field.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      snap: false,
      toolbarHeight: 80.h,
      backgroundColor: AppColors.kPrimary,

      automaticallyImplyLeading: false,
      // expandedHeight: 80.h,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: CircleAvatar(
          radius: 18.w,
          backgroundImage: const NetworkImage(
              "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5zdGFncmFtJTIwcHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
        ),
      ),
      title: SizedBox(
        width: 250.w,
        height: 35.h,
        child: const TextformsField(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            backgroundImage: const NetworkImage(
                "https://st.depositphotos.com/1400069/4761/i/600/depositphotos_47618733-stock-photo-girl-profile.jpg"),
            radius: 23.w,
          ),
        )
      ],
    );
  }
}
