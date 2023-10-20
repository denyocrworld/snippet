import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class CgMainService {
  List<Map> scaffoldList = [
    {
      'label': 'Scaffold Basic',
      'icon': MdiIcons.devices,
      'color': Colors.blue,
      'page': TemplateScaffoldSimple(),
    },
    {
      'label': 'Scaffold Bottom Navigation Bar',
      'icon': MdiIcons.devices,
      'color': Colors.blue,
      'page': TemplateScaffoldBottomNavigationBar(),
    },
    {
      'label': 'Scaffold TabBar',
      'icon': MdiIcons.devices,
      'color': Colors.blue,
      'page': TemplateScaffoldTabbarHorizontal(),
    },
    {
      'label': 'Scaffold Drawer',
      'icon': MdiIcons.devices,
      'color': Colors.blue,
      'page': TemplateScaffoldDrawer(),
    },
    {
      'label': 'Scaffold Image',
      'icon': MdiIcons.devices,
      'color': Colors.blue,
      'page': TemplateScaffoldImage(),
    },
    {
      'label': 'Scaffold SliverAppbar',
      'icon': MdiIcons.devices,
      'color': Colors.blue,
      'page': TemplateScaffoldSliverAppbar(),
    },
    {
      'label': 'Scaffold Menubar',
      'icon': MdiIcons.devices,
      'color': Colors.blue,
      'page': TemplateScaffoldMenubar(),
    },
  ];

  List<Map> menuList = [
    {
      'label': 'HotKey',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'page': CgHotkeyView(),
    },
    {
      'label': 'Common',
      'icon': MdiIcons.soccerField,
      'color': Colors.yellow,
      'page': CgCommonView(),
    },
    {
      'label': 'Scaffold',
      'icon': MdiIcons.screwdriver,
      'color': Colors.green,
      'page': CgScaffoldView(),
    },
    {
      'label': 'Menubar',
      'icon': MdiIcons.menu,
      'color': Colors.orange,
      'page': CgMenubarView(),
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.mapMarkerPath,
      'color': Colors.red,
      'page': CgNavigationView(),
    },
    {
      'label': 'Container',
      'icon': MdiIcons.card,
      'color': Colors.purple,
      'page': CgContainerView(),
    },
    {
      'label': 'Card',
      'icon': MdiIcons.cardOutline,
      'color': Colors.purple,
      'page': CgCardView(),
    },
    {
      'label': 'Text',
      'icon': MdiIcons.textBox,
      'color': Colors.orange,
      'page': CgTextView(),
    },
    {
      'label': 'Image',
      'icon': MdiIcons.image,
      'color': Colors.pink,
      'page': CgImageView(),
    },
    {
      'label': 'Icon',
      'icon': MdiIcons.emoticonHappyOutline,
      'color': Colors.yellow,
      'page': CgIconView(),
    },
    {
      'label': 'CircleAvatar',
      'icon': MdiIcons.accountCircleOutline,
      'color': Colors.teal,
      'page': CgCircleAvatarView(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.indigo,
      'page': CgListView(),
    },
    {
      'label': 'ListViewItem',
      'icon': MdiIcons.viewListOutline,
      'color': Colors.lime,
      'page': CgListItemView(),
    },
    {
      'label': 'GridView',
      'icon': MdiIcons.viewGridPlus,
      'color': Colors.cyan,
      'page': CgGridView(),
    },
    {
      'label': 'CalendarView',
      'icon': MdiIcons.calendar,
      'color': Colors.cyan,
      'page': CgCalendarView(),
    },
    {
      'label': 'Wrap',
      'icon': MdiIcons.wrap,
      'color': Colors.cyan,
      'page': CgWrapView(),
    },
    {
      'label': 'TableView',
      'icon': MdiIcons.table,
      'color': Colors.cyan,
      'page': CgTableView(),
    },
    {
      'label': 'ChartView',
      'icon': MdiIcons.chartLine,
      'color': Colors.cyan,
      'page': CgChartView(),
    },
    {
      'label': 'MapView',
      'icon': MdiIcons.map,
      'color': Colors.cyan,
      'page': CgMapView(),
    },
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.amber,
      'page': CgFormView(),
    },
    {
      'label': 'Button',
      'icon': MdiIcons.buttonPointer,
      'color': Colors.red,
      'page': CgButtonView(),
    },
    {
      'label': 'Carousel',
      'icon': MdiIcons.alertBoxOutline,
      'color': Colors.red,
      'page': CgCarouselView(),
    },
    {
      'label': 'Alert',
      'icon': MdiIcons.alertBoxOutline,
      'color': Colors.grey,
      'page': CgAlertView(),
      'tag': 'Nunggu Mood'
    },
    {
      'label': 'Get ???',
      'icon': MdiIcons.firebase,
      'color': Colors.red,
      'page': CgGetView(),
    },
    {
      'label': 'HTTP Request',
      'icon': MdiIcons.web,
      'color': Colors.blue,
      'page': CgHttpView(),
    },
    {
      'label': 'Firebase',
      'icon': MdiIcons.firebase,
      'color': Colors.orange,
      'page': CgFirebaseView(),
    },
    {
      'label': 'Future',
      'icon': MdiIcons.web,
      'color': Colors.purple,
      'page': CgFutureView(),
    },
  ];

//Buatlah List<Map> uiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Dashboard, ListView, DetailView, ReportView, ProfileView dengan color yang unik dan gunakan MdiIcons.
  List<Map> slicingUiMenuList = [
    {
      'label': 'ELogin1',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin1View(),
    },

    {
      'label': 'ELogin2',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin2View(),
    },
    {
      'label': 'ELogin3',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin3View(),
    },
    {
      'label': 'ELogin4',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin4View(),
    },
    {
      'label': 'ELogin5',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin5View(),
    },
    {
      'label': 'ELogin6',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin6View(),
    },
    {
      'label': 'ELogin7',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin7View(),
    },
    {
      'label': 'ELogin8',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin8View(),
    },
    {
      'label': 'ELogin9',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin9View(),
    },
    {
      'label': 'ELogin10',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red[600],
      'page': Elogin10View(),
    },
    {
      'label': 'EDashboard1',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard1View(),
    },
    {
      'label': 'EDashboard2',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard2View(),
    },
    {
      'label': 'EDashboard3',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard3View(),
    },
    {
      'label': 'EDashboard4',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard4View(),
    },
    {
      'label': 'EDashboard5',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard5View(),
    },
    {
      'label': 'EDashboard6',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard6View(),
    },
    {
      'label': 'EDashboard7',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard7View(),
    },
    {
      'label': 'EDashboard8',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard8View(),
    },
    {
      'label': 'EDashboard9',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard9View(),
    },
    {
      'label': 'EDashboard10',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Edashboard10View(),
    },
    {
      'label': 'EList1',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist1View(),
    },
    {
      'label': 'EList2',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist2View(),
    },
    {
      'label': 'EList3',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist3View(),
    },
    {
      'label': 'EList4',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist4View(),
    },
    {
      'label': 'EList5',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist5View(),
    },
    {
      'label': 'EList6',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist6View(),
    },
    {
      'label': 'EList7',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist7View(),
    },
    {
      'label': 'EList8',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist8View(),
    },
    {
      'label': 'EList9',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist9View(),
    },
    {
      'label': 'EList10',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Elist10View(),
    },
    {
      'label': 'Ecategory1',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory1View(),
    },
    {
      'label': 'Ecategory2',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory2View(),
    },
    {
      'label': 'Ecategory3',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory3View(),
    },
    {
      'label': 'Ecategory4',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory4View(),
    },
    {
      'label': 'Ecategory5',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory5View(),
    },
    {
      'label': 'Ecategory6',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory6View(),
    },
    {
      'label': 'Ecategory7',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory7View(),
    },
    {
      'label': 'Ecategory8',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory8View(),
    },
    {
      'label': 'Ecategory9',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory9View(),
    },
    {
      'label': 'Ecategory10',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': Ecategory10View(),
    },
    // {
    //   'label': 'Login',
    //   'icon': MdiIcons.loginVariant,
    //   'color': Colors.grey,
    //   'page': CgPremadeLoginView(),
    //   'tag': 'Nunggu Mood',
    // },
    // {
    //   'label': 'Login',
    //   'icon': MdiIcons.loginVariant,
    //   'color': Colors.grey,
    //   'page': CgPremadeLoginView(),
    //   'tag': 'Nunggu Mood',
    // },
    // {
    //   'label': 'Dashboard',
    //   'icon': MdiIcons.viewDashboard,
    //   'color': Colors.grey,
    //   'page': CgPremadeDashboardView(),
    //   'tag': 'Nunggu Mood',
    // },
    // {
    //   'label': 'ListView',
    //   'icon': MdiIcons.viewList,
    //   'color': Colors.grey,
    //   'page': CgPremadeListView(),
    //   'tag': 'Nunggu Mood',
    // },
    // {
    //   'label': 'DetailView',
    //   'icon': MdiIcons.viewGrid,
    //   'color': Colors.grey,
    //   'page': CgPremadeDetailView(),
    //   'tag': 'Nunggu Mood',
    // },
    // {
    //   'label': 'ReportView',
    //   'icon': MdiIcons.chartBar,
    //   'color': Colors.grey,
    //   'page': CgPremadeReportView(),
    //   'tag': 'Nunggu Mood',
    // },
    // {
    //   'label': 'ProfileView',
    //   'icon': MdiIcons.accountCircle,
    //   'color': Colors.grey,
    //   'page': CgPremadeProfileView(),
    //   'tag': 'Nunggu Mood',
    // },
  ];

  List<Map> slicingUiRandomMenuList = [
    {
      'label': 'R.Dashboard1',
      'icon': MdiIcons.loginVariant,
      'color': Colors.blue[900],
      'page': RandomDashboard1View(),
    },
    {
      'label': 'R.Dashboard1',
      'icon': MdiIcons.loginVariant,
      'color': Colors.blue[900],
      'page': RandomDashboard1View(),
    },
    {
      'label': 'R.Dashboard1',
      'icon': MdiIcons.loginVariant,
      'color': Colors.blue[900],
      'page': RandomDashboard1View(),
    },
  ];

  List<Map> suiRandomList = [
    {
      'label': 'Todo Dashboard',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red,
      'page': TdDashboardView(),
    },
    {
      'label': 'Todo Dashboard',
      'icon': MdiIcons.loginVariant,
      'color': Colors.green,
      'page': TdDashboardView(),
    },
    {
      'label': 'Todo Dashboard',
      'icon': MdiIcons.loginVariant,
      'color': Colors.blue,
      'page': TdDashboardView(),
    },
    {
      'label': 'Chat List',
      'icon': MdiIcons.loginVariant,
      'color': Colors.blue,
      'page': RandomChatListView(),
    },
  ];
  List<Map> suiELearningList = [
    {
      'label': 'Welcome',
      'icon': MdiIcons.loginVariant,
      'color': Colors.red,
      'page': ElearningWelcomeView(),
    },
    {
      'label': 'Dashboard',
      'icon': MdiIcons.loginVariant,
      'color': Colors.green,
      'page': ElearningDashboardView(),
    },
    {
      'label': 'Course Detail',
      'icon': MdiIcons.loginVariant,
      'color': Colors.blue,
      'page': ElearningCourseDetailView(),
    },
    {
      'label': 'Zapp',
      'icon': MdiIcons.loginVariant,
      'color': Colors.blue,
      'page': ZappMainNavigationView(),
    },
  ];

//Buatlah List<Map> hyperUiMenuList di Fl~utter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Form, ListView, FireStream, Dialog, Navigation, Utility, MVC Generator dengan color yang unik dan gunakan MdiIcons.
  List<Map> hyperUiMenuList = [
    {
      'label': 'Button',
      'icon': MdiIcons.formTextbox,
      'color': Colors.blue,
      'page': CgHuiButtonView(),
    },
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.blue,
      'page': CgHyperuiFormView(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.red,
      'page': CgHyperuiListView(),
    },
    {
      'label': 'GridView',
      'icon': MdiIcons.viewList,
      'color': Colors.green,
      'page': CgHuiGridView(),
    },
    {
      'label': 'FireStream',
      'icon': MdiIcons.fire,
      'color': Colors.grey,
      'page': CgHyperuiFireStreamView(),
      'tag': "Nunggu Mood",
    },
    {
      'label': 'Dialog',
      'icon': MdiIcons.message,
      'color': Colors.grey,
      'page': CgHyperuiDialogView(),
      'tag': "Nunggu Mood",
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.navigation,
      'color': Colors.grey,
      'page': CgHyperuiNavigationView(),
      'tag': "Nunggu Mood",
    },
    {
      'label': 'Utility',
      'icon': MdiIcons.wrench,
      'color': Colors.grey,
      'page': CgHyperuiUtilityView(),
      'tag': "Nunggu Mood",
    },
    // {
    //   'label': 'MVC Generator',
    //   'icon': MdiIcons.codeBraces,
    //   'color': Colors.grey,
    //   'page': CgHyperuiMvcGeneratorView(),
    //   'tag': "Nunggu Mood",
    // },
  ];

//Buatlah List<Map> demoAppList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa POS, Car Rental, Barber Shop dengan color yang unik dan gunakan MdiIcons.
  List<Map> demoAppList = [
    {
      'label': 'POS',
      'icon': MdiIcons.cashRegister,
      'color': Colors.green,
      'page': Container(),
      'tag': 'Coming Soon',
    },
    {
      'label': 'Car Rental',
      'icon': MdiIcons.car,
      'color': Colors.blue,
      'page': Container(),
      'tag': 'Coming Soon',
    },
    {
      'label': 'Barber Shop',
      'icon': MdiIcons.scissorsCutting,
      'color': Colors.orange,
      'page': Container(),
      'tag': 'Coming Soon',
    },
  ];
}
