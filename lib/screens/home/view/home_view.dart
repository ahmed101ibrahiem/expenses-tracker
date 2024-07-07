part of '../home_import.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewmodel vm = HomeViewmodel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
        child: const Column(
          children: [
            HomeCustomAppBar(),
            // show data
            HomeDashBoardWidget(),
            HomeViewAll(),
            HomeTransactions(),
          ],
        ),
      ),
    );
  }
}

