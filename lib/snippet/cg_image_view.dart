import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgImageView extends StatefulWidget {
  const CgImageView({Key? key}) : super(key: key);

  Widget build(context, CgImageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgImage"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SnippetContainer("image"),
              //#TEMPLATE image
              Image.network(
                "https://images.unsplash.com/photo-1484517586036-ed3db9e3749e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              //#END
              const SnippetContainer("image_network"),
              //#TEMPLATE image_network
              Image.network(
                "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              //#END
              const SnippetContainer("image_asset"),
              //#TEMPLATE image_asset
              Image.asset(
                "assets/icon/icon.png",
                width: 120.0,
                height: 120.0,
                fit: BoxFit.fill,
              ),
              //#END
              const SnippetContainer("image_galleries"),
              //#TEMPLATE image_galleries
              LayoutBuilder(
                builder: (context, constraint) {
                  List menus = [
                    {
                      "photo":
                          "https://i.ibb.co/rcDzK4T/photo-1605538293913-13cfc720511e-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {
                        print("Test!");
                      },
                    },
                    {
                      "photo":
                          "https://i.ibb.co/TDyK1km/photo-1593807980339-b3fad3472c45-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {},
                    },
                    {
                      "photo":
                          "https://i.ibb.co/k3T7YBz/photo-1610320819784-58ccf5531a3f-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {},
                    },
                    {
                      "photo":
                          "https://i.ibb.co/0mS4w5t/photo-1576750168278-747aebbb30c3-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {},
                    },
                    {
                      "photo":
                          "https://i.ibb.co/jDfJNM0/photo-1587897500679-a5962dc49c67-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {},
                    },
                    {
                      "photo":
                          "https://i.ibb.co/MVYZL7Q/photo-1581906848371-59968ebb7052-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {},
                    },
                    {
                      "photo":
                          "https://i.ibb.co/TmmxC61/photo-1605604904594-b640971ce3cb-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {},
                    },
                    {
                      "photo":
                          "https://i.ibb.co/ck5p8Rx/photo-1594235372071-6734d85514ea-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "onTap": () {},
                    },
                  ];

                  var spacing = 2.0;
                  var rowCount = 4;

                  return Wrap(
                    runSpacing: spacing,
                    spacing: spacing,
                    children: List.generate(
                      menus.length,
                      (index) {
                        var item = menus[index];
                        var size =
                            (constraint.biggest.width - (rowCount * spacing)) /
                                rowCount;

                        return InkWell(
                          onTap: () => item["onTap"](),
                          child: Container(
                            height: size,
                            width: size,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  item["photo"],
                                ),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  0.0,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgImageView> createState() => CgImageController();
}
