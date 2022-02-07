part of 'page.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCardMyStatus(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text(
              "Pembaruan terkini",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          _buildCardNewStatus(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text(
              "Pembaruan yang telah dilihat",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          _buildCardSeenStatus(),
        ],
      ),
    );
  }

  Widget _buildCardMyStatus() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Status Saya",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: const Text(
                              "Ketuk untuk menambahkan pembaruan status",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardNewStatus() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DottedBorder(
                  borderType: BorderType.Circle,
                  dashPattern: const [47, 5],
                  color: Colors.teal,
                  strokeWidth: 2,
                  child: Container(
                    width: 52,
                    height: 52,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/fu_hua.jpg"),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Kiana",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: const Text(
                          "Kemarin 23.08",
                          style:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardSeenStatus() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DottedBorder(
                  dashPattern: const [1,0],
                  color: Colors.teal,
                  strokeWidth: 2,
                  borderType: BorderType.Circle,
                  child: Container(
                    width: 52,
                    height: 52,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/fu_hua.jpg"),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Kiana",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: const Text(
                          "Kemarin 23.08",
                          style:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
