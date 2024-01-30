import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class UkDashboardView extends StatefulWidget {
  const UkDashboardView({Key? key}) : super(key: key);

  Widget build(context, UkDashboardController controller) {
    controller.view = this;
    List<UkDashboardMenuItem> items = [
      UkDashboardMenuItem(
        label: "Dashboard1",
        view: Edashboard1View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard2",
        view: Edashboard2View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard3",
        view: Edashboard3View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard4",
        view: Edashboard4View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard5",
        view: Edashboard5View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard6",
        view: Edashboard6View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard7",
        view: Edashboard7View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard8",
        view: Edashboard8View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard9",
        view: Edashboard9View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard10",
        view: Edashboard10View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard11",
        view: UkDashboard11View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard12",
        view: UkDashboard12View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard13",
        view: UkDashboard13View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard14",
        view: UkDashboard14View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard15",
        view: UkDashboard15View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard16",
        view: UkDashboard16View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard17",
        view: UkDashboard17View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard18",
        view: UkDashboard18View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard19",
        view: UkDashboard19View(),
      ),
      UkDashboardMenuItem(
        label: "Dashboard20",
        view: UkDashboard20View(),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("UkDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 0.4,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: items.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = items[index];
                  return InkWell(
                    onTap: () => Get.to(item.view),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${item.label}",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UkDashboardView> createState() => UkDashboardController();
}
