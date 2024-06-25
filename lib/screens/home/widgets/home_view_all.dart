
part of '../home_import.dart';

class HomeViewAll extends StatelessWidget {
  const HomeViewAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,bottom:20 ).h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppConstant.transactions,
            style:
                TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () => log('View All'),
            child: Text(
              AppConstant.viewAll,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey,fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
