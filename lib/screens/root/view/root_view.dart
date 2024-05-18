

part of 'package:expenses_tracker/screens/root/root_import.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: const Radius.circular(16).r,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          elevation: 3,
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: AppConstant.home),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.graph_square_fill), label: AppConstant.stats)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
              transform: const GradientRotation(pi/4)
            ),
          ),
          child: const Icon(CupertinoIcons.add),
        ),
      ),
      body: const HomeView(),
    );
  }
}