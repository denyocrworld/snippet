import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DebugView extends StatefulWidget {
  final BuildContext context;
  final bool visible;
  final Widget? child;

  DebugView({
    Key? key,
    required this.context,
    required this.visible,
    this.child,
  }) : super(key: key);

  Widget build(context, DebugController controller) {
    controller.view = this;
    if (controller.loading)
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );

    if (child == null) return Container();
    if (!visible) return Container();
    if (!kDebugMode) return Container();

    return Material(
      child: Stack(
        children: [
          if (!controller.previewMode) child ?? Container(),
          if (controller.previewMode)
            Downloadable(
              child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          controller.background,
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 100.0,
                              bottom: 80.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  transform:
                                      Matrix4.translationValues(0.0, 20, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      DebugPopInput(
                                        value: controller.tag,
                                        onSubmitted: (value) async {
                                          controller.tag = value;
                                          controller.setState(() {});
                                          controller.saveConfig();
                                        },
                                        child: Text(
                                          controller.tag,
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.robotoCondensed(
                                            fontSize: 60.0 * controller.factor,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 1000.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      DebugPopInput(
                                        value: controller.title,
                                        onSubmitted: (value) async {
                                          controller.title = value;
                                          controller.setState(() {});
                                          controller.saveConfig();
                                        },
                                        child: Text(
                                          controller.title,
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.robotoCondensed(
                                            fontSize: 132.0 * controller.factor,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffffcd25),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  transform:
                                      Matrix4.translationValues(0.0, -20, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      DebugPopInput(
                                        value: controller.subtitle,
                                        onSubmitted: (value) async {
                                          controller.subtitle = value;
                                          controller.setState(() {});
                                          controller.saveConfig();
                                        },
                                        child: Text(
                                          controller.subtitle,
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.robotoCondensed(
                                            fontSize: 60.0 * controller.factor,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (controller.socialMedia)
                          Positioned(
                            left: 100.0,
                            bottom: 100.0,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await DownloadableState.instance
                                            .capture();
                                      },
                                      child: DebugSocialMedia(
                                        color: Color(0xffd32322),
                                        url:
                                            "https://icons.iconarchive.com/icons/dakirby309/simply-styled/256/YouTube-icon.png",
                                        label: "@CapekNgoding",
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    DebugSocialMedia(
                                      color: Colors.black,
                                      url:
                                          "https://icons.iconarchive.com/icons/arturo-wibawa/akar/256/tiktok-icon.png",
                                      label: "@CodingWithDeny",
                                      iconColor: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DebugSocialMedia(
                                      color: Color(0xff1d93d5),
                                      url:
                                          "https://icons.iconarchive.com/icons/limav/flat-gradient-social/256/Linkedin-icon.png",
                                      label: "Deny Ocr",
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    DebugSocialMedia(
                                      color: Color(0xff8b26ce),
                                      url:
                                          "https://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Instagram-icon.png",
                                      label: "deniansyah93",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        Positioned(
                          right: 100,
                          top: 40,
                          bottom: 10,
                          width: 362.0,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 50.0,
                              left: 8.0,
                              right: 8.0,
                              bottom: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 12,
                                  offset: Offset(0, 11),
                                ),
                              ],
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                              child: child!,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ) ??
                  Container(
                    width: 0,
                    height: 0,
                  ),
            ),
          if (controller.previewMode)
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  QButton(
                    width: 140.0,
                    label: "Screenshot",
                    size: sm,
                    onPressed: () async {
                      await DownloadableState.instance.capture();
                    },
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  QButton(
                    width: 140.0,
                    label: "Background",
                    size: sm,
                    onPressed: () => controller.updateBackground(),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  QButton(
                    width: 140.0,
                    label: "SocialMedia",
                    size: sm,
                    onPressed: () => controller.updateSocialMedia(),
                  ),
                ],
              ),
            ),
          Positioned(
            right: -8,
            bottom: 100,
            child: Container(
              width: 30.0,
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  InkWell(
                    onTap: () => Get.to(HUIWidgetDemoView()),
                    child: Icon(
                      Icons.widgets,
                      color: Colors.white,
                      size: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  InkWell(
                    onTap: () => controller.refresh(),
                    child: Icon(
                      Icons.refresh,
                      color: Colors.white,
                      size: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  InkWell(
                    onTap: () => controller.updatePreviewMode(),
                    child: Icon(
                      Icons.laptop_windows_outlined,
                      color: Colors.white,
                      size: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}
