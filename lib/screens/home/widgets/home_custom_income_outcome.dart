

part of 'package:expenses_tracker/screens/home/home_import.dart';



class HomeCustomIncomeAndOutcome extends StatelessWidget {
  const HomeCustomIncomeAndOutcome({
    super.key,
    required this.money,
    required this.title,
    required this.iconColor,
    required this.iconData

  });
  final String title;
  final String money;
  final Color iconColor;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25.h,
          width: 25.w,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.white30),
          child: Center(
            child: Icon(
              CupertinoIcons.arrow_down,
              size: 14.sp,
              color: Colors.greenAccent,
            ),
          ),
        ),
        8.horizontalSpace,
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '\$ $money',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ],
    );
  }
}
