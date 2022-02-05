part of 'page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController _homePageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
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
            StatusPage(),
            ChatPage(),
          ],
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
        elevation: 7,
      );
    } else if (_homePageController.thisPage == 2) {
      return child = Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.edit,
              color: Colors.grey[800],
            ),
            heroTag: "edit",
            elevation: 7,
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal[700],
            child: const Icon(Icons.camera_alt),
            heroTag: "camera",
            elevation: 7,
          ),
        ],
      );
    } else if (_homePageController.thisPage == 3) {
      return child = FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[700],
        child: const Icon(Icons.call),
        elevation: 7,
      );
    } else {
      return const SizedBox();
    }
  }
}
