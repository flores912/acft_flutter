import 'package:flutter/material.dart';

class AcftEventsPage extends StatefulWidget {
  const AcftEventsPage({Key? key}) : super(key: key);

  @override
  _AcftEventsPageState createState() => _AcftEventsPageState();
}

class _AcftEventsPageState extends State<AcftEventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 250,
              pinned: true,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('ACFT'),
                background: Image.asset(
                  'images/acft_cover.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                TabBar(
                  labelColor: Colors.black87,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab( text: "Events"),
                    Tab( text: "Alternate"),
                  ],
                ),
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.yellow,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
