part of 'package:expenses_tracker/screens/home/home_import.dart';

class HomeDashBoardWidget extends StatelessWidget {
  const HomeDashBoardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24).h,
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenWidth / 1.8,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                color: Colors.grey.shade300,
                offset: const Offset(5, 5))
          ],
          borderRadius: BorderRadius.circular(24).r,
          gradient: MyTheme.myGradient),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppConstant.totalBalance,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
          12.verticalSpace,
          Text(
            '\$ 4800.00',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20).r,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeCustomIncomeAndOutcome(
                  iconColor: Colors.green,
                  iconData: CupertinoIcons.arrow_down,
                  title: AppConstant.income,
                  money: '250.44',
                ),
                HomeCustomIncomeAndOutcome(
                  iconColor: Colors.red,
                  iconData: CupertinoIcons.arrow_up,
                  title: AppConstant.expenses,
                  money: '250.44',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
