import 'package:flutter/material.dart';

class SuperListController extends State<SuperListView> {
  static late SuperListController instance;
  late SuperListView view;

  @override
  void initState() {
    instance = this;
    getData();
    scrollController.addListener(() {
      if (loading) return;
      double offset = scrollController.offset;
      double maxOffset = scrollController.position.maxScrollExtent;

      if (offset == maxOffset) {
        nextPage();
      }
    });
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int page = 1;
  ScrollController scrollController = ScrollController();
  List items = [];
  bool loading = false;

  getData() async {
    items = await widget.onLoading(1);
    setState(() {});
  }

  nextPage() async {
    loading = true;
    page++;
    List newItems = await widget.onLoading(page);
    if (newItems.isEmpty) {
      page--;
    }
    items.addAll(newItems);
    loading = false;
    setState(() {});
  }

  refresh() async {
    page = 1;
    items = [];
    setState(() {});
    items = await widget.onLoading(page);
    setState(() {});
  }
}

class SuperListView extends StatefulWidget {
  final Function(int page) onLoading;
  final Widget? Function(BuildContext, int, Map<String, dynamic> item)
      itemBuilder;

  const SuperListView({
    Key? key,
    required this.onLoading,
    required this.itemBuilder,
  }) : super(key: key);

  Widget build(context, SuperListController controller) {
    controller.view = this;

    return RefreshIndicator(
      onRefresh: () async {
        print("onREfresh");
        controller.refresh();
      },
      child: ListView.builder(
        controller: controller.scrollController,
        itemCount: controller.items.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> item = controller.items[index];
          return itemBuilder(context, index, item);
        },
      ),
    );
  }

  @override
  State<SuperListView> createState() => SuperListController();
}
