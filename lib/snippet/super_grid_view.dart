import 'package:flutter/material.dart';

class SuperGridController extends State<SuperGridView> {
  static late SuperGridController instance;
  late SuperGridView view;

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
    setState(() {});

    await Future.delayed(Duration(seconds: 2));

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

class SuperGridView extends StatefulWidget {
  final Function(int page) onLoading;
  final Widget? Function(BuildContext, int, Map<String, dynamic> item)
      itemBuilder;

  const SuperGridView({
    Key? key,
    required this.onLoading,
    required this.itemBuilder,
  }) : super(key: key);

  Widget build(context, SuperGridController controller) {
    controller.view = this;

    return RefreshIndicator(
      onRefresh: () async {
        print("onREfresh");
        controller.refresh();
      },
      child: Stack(
        children: [
          GridView.builder(
            padding: const EdgeInsets.all(20.0),
            controller: controller.scrollController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.0,
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
            ),
            itemCount: controller.items.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> item = controller.items[index];
              return itemBuilder(context, index, item);
            },
          ),
          if (controller.loading)
            Positioned(
              bottom: 10,
              left: 20.0,
              right: 20.0,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Text("Loading..."),
              ),
            ),
        ],
      ),
    );
  }

  @override
  State<SuperGridView> createState() => SuperGridController();
}
