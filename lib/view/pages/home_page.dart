part of 'page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final HomePageController _homePageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverSafeArea(
                  top: false,
                  sliver: SliverAppBar(
                    backgroundColor: Colors.teal[700],
                    title: const Text('WhatsApp'),
                    floating: true,
                    pinned: true,
                    snap: false,
                    actions: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                    bottom: TabBar(
                      controller: _homePageController.tabController,
                      indicatorColor: Colors.white,
                      isScrollable: true,
                      tabs: [
                        const Tab(
                          child: Icon(Icons.camera_alt),
                        ),
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.204,
                          child: const Center(
                            child: Text(
                              "CHAT",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.204,
                          child: const Center(
                            child: Text(
                              "STATUS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.204,
                          child: const Center(
                            child: Text(
                              "PANGGILAN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _homePageController.tabController,
            children: const [
              ChatPage(),
              ChatPage(),
              ChatPage(),
              ChatPage(),
            ],
          ),
        ),
      ),
      floatingActionButton: Obx(() => _buildFloatingActionButton()),
    );
  }

  Widget _buildFloatingActionButton() {
    Widget child;
    if (_homePageController.thisPage == 1) {
      return child = FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[700],
        child: const Icon(Icons.message),
      );
    } else if (_homePageController.thisPage == 2) {
      return child = FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[700],
        child: const Icon(Icons.camera_alt),
      );
    } else if (_homePageController.thisPage == 3) {
      return child = FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[700],
        child: const Icon(Icons.call),
      );
    } else {
      return const SizedBox();
    }
  }
}
