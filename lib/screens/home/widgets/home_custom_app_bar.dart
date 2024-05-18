

part of 'package:expenses_tracker/screens/home/home_import.dart';


class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  color: Colors.yellow[700], shape: BoxShape.circle),
            ),
            Icon(
              CupertinoIcons.person_fill,
              color: Colors.yellow[800],
            ),
          ],
        ),
        8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstant.welcome,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.outline),
            ),
            Text(
              AppConstant.userName,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {}, icon: const Icon(CupertinoIcons.settings))
      ],
    );
  }
}
