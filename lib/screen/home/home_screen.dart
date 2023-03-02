import 'package:flutter/material.dart';
import 'package:theme/extension/size_context_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldExpandAppBar();
  }
}

class ScaffoldExpandAppBar extends StatelessWidget {
  const ScaffoldExpandAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: ExpandAppBarDelegate(),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: context.heightScreen,
            ),
          )
        ],
      ),
    );
  }
}

class ExpandAppBarDelegate extends SliverPersistentHeaderDelegate {
  double shrinkOffset = 0;

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    this.shrinkOffset = shrinkOffset;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(),
        Container(
          color: Colors.blue,
          height: maxExtent * percent,
        ),
      ],
    );
  }

  double get percent => shrinkOffset / (maxExtent + minExtent);

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(oldDelegate) {
    return true;
  }
}
