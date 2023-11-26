import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MultiBoardListExample extends StatefulWidget {
  const MultiBoardListExample({Key? key}) : super(key: key);

  @override
  State<MultiBoardListExample> createState() => _MultiBoardListExampleState();
}

class _MultiBoardListExampleState extends State<MultiBoardListExample> {
  final AppFlowyBoardController controller = AppFlowyBoardController(
    onMoveGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move item from $fromIndex to $toIndex');
    },
    onMoveGroupItem: (groupId, fromIndex, toIndex) {
      debugPrint('Move $groupId:$fromIndex to $groupId:$toIndex');
    },
    onMoveGroupItemToGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move $fromGroupId:$fromIndex to $toGroupId:$toIndex');
    },
  );

  late AppFlowyBoardScrollController boardController;
  late AppFlowyGroupData<dynamic> group1;
  late AppFlowyGroupData<dynamic> group2;
  // var group2 = [];
  @override
  void initState() {
    boardController = AppFlowyBoardScrollController();
    group1 = AppFlowyGroupData(id: "To Do", name: "To Do", items: [
      // IconItem(title: "yellow-star"),
      IconItem(title: "orange-star"),
      IconItem(title: "red-star"),
      IconItem(title: "purple-star"),
      IconItem(title: "blue-star"),
      IconItem(title: "green-star"),
      IconItem(title: "red-exclamation"),
      IconItem(title: "orange-arrow"),
      IconItem(title: "yellow-exclamation"),
      IconItem(title: "green-tick"),
      IconItem(title: "blue-info"),
      IconItem(title: "purple-question"),
    ]);

    var group2 = AppFlowyGroupData(
      id: "In Progress",
      name: "In Progress",
      items: [
        IconItem(title: "yellow-star"),
      ],
    );

    controller.addGroup(group1);
    controller.addGroup(group2);
    // controller.addGroup(group3);

    super.initState();
  }

  void onestar() {
    debugPrint("1");
    setState(() {
      debugPrint("2");

      group2 =
          AppFlowyGroupData(id: "In Progress", name: "In Progress", items: [
        // IconItem(title: "yellow-star"),
        IconItem(title: "orange-star"),
        IconItem(title: "red-star"),
        IconItem(title: "purple-star"),
        IconItem(title: "blue-star"),
        IconItem(title: "green-star"),
        IconItem(title: "red-exclamation"),
        IconItem(title: "orange-arrow"),
        IconItem(title: "yellow-exclamation"),
        IconItem(title: "green-tick"),
        IconItem(title: "blue-info"),
        IconItem(title: "purple-question"),
      ]);

      group1 = AppFlowyGroupData(
        id: "To Do",
        name: "To Do",
        items: [
          IconItem(title: "yellow-star"),
        ],
      );
      controller.removeGroup("To Do");
      controller.removeGroup("In Progress");
      controller.addGroup(group1);
      controller.addGroup(group2);
    });
  }

  void fourstar() {
    debugPrint("1");
    setState(() {
      debugPrint("2");

      group2 =
          AppFlowyGroupData(id: "In Progress", name: "In Progress", items: [
        // IconItem(title: "yellow-star"),
        IconItem(title: "orange-star"),
        IconItem(title: "red-star"),
        IconItem(title: "purple-star"),
        // IconItem(title: "blue-star"),
        IconItem(title: "green-star"),
        // IconItem(title: "red-exclamation"),
        IconItem(title: "orange-arrow"),
        IconItem(title: "yellow-exclamation"),
        // IconItem(title: "green-tick"),
        IconItem(title: "blue-info"),
        IconItem(title: "purple-question"),
      ]);

      group1 = AppFlowyGroupData(
        id: "To Do",
        name: "To Do",
        items: [
          IconItem(title: "yellow-star"),
          IconItem(title: "blue-star"),
          IconItem(title: "green-tick"),
          IconItem(title: "red-exclamation"),
        ],
      );
      controller.removeGroup("To Do");
      controller.removeGroup("In Progress");
      controller.addGroup(group1);
      controller.addGroup(group2);
    });
  }

  void allstars() {
    debugPrint("1");
    setState(() {
      debugPrint("2");

      group1 = AppFlowyGroupData(id: "To Do", name: "To Do", items: [
        IconItem(title: "yellow-star"),
        IconItem(title: "orange-star"),
        IconItem(title: "red-star"),
        IconItem(title: "purple-star"),
        IconItem(title: "blue-star"),
        IconItem(title: "green-star"),
        IconItem(title: "red-exclamation"),
        IconItem(title: "orange-arrow"),
        IconItem(title: "yellow-exclamation"),
        IconItem(title: "green-tick"),
        IconItem(title: "blue-info"),
        IconItem(title: "purple-question"),
      ]);

      group2 = AppFlowyGroupData(
        id: "In Progress",
        name: "In Progress",
        items: [
          // IconItem(title: "yellow-star"),
        ],
      );
      controller.removeGroup("To Do");
      controller.removeGroup("In Progress");
      controller.addGroup(group1);
      controller.addGroup(group2);
    });
  }

  @override
  Widget build(BuildContext context) {
    final config = AppFlowyBoardConfig(
      groupBackgroundColor: HexColor.fromHex('#F7F8FC'),
      stretchGroupHeight: false,
    );
    return Container(
      width: 800,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: [
                Text("Presets:"),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: InkWell(
                    child: Text(
                      "1 star",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: onestar,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: InkWell(
                    child:
                        Text("4 stars", style: TextStyle(color: Colors.blue)),
                    onTap: fourstar,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: InkWell(
                    child:
                        Text("All Stars", style: TextStyle(color: Colors.blue)),
                    onTap: allstars,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: 5,
                    child: Row(
                      children: [
                        Text("In Use:"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Not In Use:"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              AppFlowyBoard(
                  controller: controller,
                  cardBuilder: (context, group, groupItem) {
                    return AppFlowyGroupCard(
                      key: ValueKey(groupItem.id),
                      child: _buildCard(groupItem),
                    );
                  },
                  boardScrollController: boardController,
                  groupConstraints:
                      const BoxConstraints.tightFor(width: 500, height: 35),
                  config: config),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(AppFlowyGroupItem item) {
    if (item is TextItem) {
      return Container(
        // width: 30,
        child: Row(
          children: [Text(item.s)],
        ),
      );
    }

    if (item is IconItem) {
      return Container(color: Colors.white, child: IconCard(item: item));
    }

    throw UnimplementedError();
  }
}

class IconCard extends StatefulWidget {
  final IconItem item;
  const IconCard({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.item.title == "yellow-star")
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          if (widget.item.title == "red-star")
            Icon(
              Icons.star,
              color: Colors.red,
            ),
          if (widget.item.title == "orange-star")
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
          if (widget.item.title == "purple-star")
            Icon(
              Icons.star,
              color: Colors.purple,
            ),
          if (widget.item.title == "blue-star")
            Icon(
              Icons.star,
              color: Colors.blue,
            ),
          if (widget.item.title == "green-star")
            Icon(
              Icons.star,
              color: Colors.green,
            ),
          if (widget.item.title == "red-exclamation")
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                // height: 50,
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    size: 15,
                    CupertinoIcons.exclamationmark,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          if (widget.item.title == "orange-arrow")
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                // height: 50,
                color: Colors.orange,
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    size: 15,
                    Icons.keyboard_double_arrow_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          if (widget.item.title == "yellow-exclamation")
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                // height: 50,
                color: Colors.yellow,
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    size: 15,
                    CupertinoIcons.exclamationmark,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          if (widget.item.title == "green-tick")
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                // height: 50,
                color: Colors.green,
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    size: 15,
                    Icons.check,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          if (widget.item.title == "blue-info")
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                // height: 50,
                width: 18,
                color: Colors.blue,
                child: const Padding(
                    padding: EdgeInsets.all(2),
                    child: Center(
                      child: Text(
                        "i",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w800),
                      ),
                    )),
              ),
            ),
          if (widget.item.title == "purple-question")
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                // height: 50,
                color: Colors.purple,
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(
                    size: 15,
                    Icons.question_mark_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          // Text(
          //   widget.item.title,
          //   style: const TextStyle(fontSize: 14),
          //   textAlign: TextAlign.left,
          // ),
          // const SizedBox(height: 10),
          // Text(
          //   widget.item.subtitle,
          //   style: const TextStyle(fontSize: 12, color: Colors.grey),
          // )
        ],
      ),
    );
  }
}

class TextItem extends AppFlowyGroupItem {
  final String s;

  TextItem(this.s);

  @override
  String get id => s;
}

class IconItem extends AppFlowyGroupItem {
  final String title;
  // final String subtitle;

  IconItem({required this.title});

  @override
  String get id => title;
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
