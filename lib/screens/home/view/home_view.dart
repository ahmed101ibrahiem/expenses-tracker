part of 'package:expenses_tracker/screens/home/home_import.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
        child: Column(
          children: [
            const HomeCustomAppBar(),
            // show data
            32.verticalSpace,
            const HomeDashBoardWidget(),
            
          ],
        ),
      ),
    );
  }
}
