import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wikolo_app/app/core/app_colors/app_colors.dart';
import 'package:wikolo_app/app/core/app_textstyles/app_textstyles.dart';
import 'package:wikolo_app/app/features/utils/util_map.dart';

class CardBuilder extends StatelessWidget {
  const CardBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.h,
      color: AppColors.kGrey.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              overflow: TextOverflow.clip,
              textAlign: TextAlign.end,
              textDirection: TextDirection.rtl,
              softWrap: true,
              maxLines: 1,
              textScaleFactor: 1,
              text: TextSpan(
                text: 'Pushups  ',
                style: AppTextStyles.h1,
                children: <TextSpan>[
                  TextSpan(
                    text: '(10k Views)',
                    style: AppTextStyles.h3.copyWith(
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220.w,
              child: ListView(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  users.length,
                  (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                            color: AppColors.kWhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150.w,
                                height: 155.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          users[index]['bg_img'].toString()),
                                      fit: BoxFit.cover),
                                  color: AppColors.kWhite,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10.w),
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.favorite,
                                          size: 40.w,
                                          color: AppColors.kSecondary,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            users[index]['profile'].toString()),
                                      ),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            users[index]['name'].toString(),
                                            style: AppTextStyles.h4
                                                .copyWith(fontSize: 10),
                                          ),
                                          Text(
                                            "data",
                                            style: AppTextStyles.h4
                                                .copyWith(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.play_arrow),
                                  const Text("Play"),
                                  Transform.scale(
                                    scale: 0.7,
                                    child: Checkbox(
                                      checkColor: AppColors.kWhite,
                                      fillColor: MaterialStateProperty.all(
                                          Colors.pink),
                                      value: false,
                                      onChanged: (_) {},
                                    ),
                                  ),
                                  const Text("Vote 10.2K")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 15,
              color: AppColors.kSecondary,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.kSecondary,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {},
                child: const Text('ϟ Send your Challenge'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
