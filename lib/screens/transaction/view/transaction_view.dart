part of '../transaction_import.dart';

class TransactionView extends StatefulWidget {
  const TransactionView({super.key});
  @override
  State<TransactionView> createState() => _TransactionViewState();
}

class _TransactionViewState extends State<TransactionView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Transaction',style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
            ),),
            20.verticalSpace,
            SizedBox(
              height: ScreenUtil().screenWidth,
              width: ScreenUtil().screenWidth,
              child:TransactionChart()
            )
          ],
        ),
      ),
    );
  }
}
