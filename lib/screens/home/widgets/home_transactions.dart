
part of '../home_import.dart';

class HomeTransactions extends StatelessWidget {
  const HomeTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: transactionsData.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(bottom: 16).r,
            padding: const EdgeInsets.all(10).r,
            child: Row(mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration:  BoxDecoration(
                        color:transactionsData[index]['color'],
                        shape: BoxShape.circle,
                      ),
                      
                    ),
                    transactionsData[index]['icon']
                  ],
                ),
                12.horizontalSpace,
                Text(transactionsData[index]['name'],
                    style: TextStyle( 
                      color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 14.sp, fontWeight: FontWeight.w500)),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactionsData[index]['totalAmount'],
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    4.verticalSpace,
                    Text(
                      transactionsData[index]['date'],
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],  ),
    
            ],),
          );
        },
      ),
    );
  }
}

