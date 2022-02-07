part of 'page.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => _buildCardChat(),
      ),
    );
  }

  Widget _buildCardChat() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 13),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 49,
                  height: 49,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(250),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/fu_hua.jpg"),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.64,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Fu Hua",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call_made,
                            size: 15,
                            color: Colors.teal[700],
                          ),
                          Text(
                            "Hari ini 07.32",
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Icon(
                Icons.call,
                color: Colors.teal[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
