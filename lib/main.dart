import 'package:flutter/material.dart';
import 'views/bottomSheetContent.dart';
import 'views/profileSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showSearchBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            elevation: 0,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var top = constraints.biggest.height;
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      color: Colors.red,
                      child: FlexibleSpaceBar(
                        centerTitle: true,
                        title: AnimatedOpacity(
                            opacity: top == kToolbarHeight ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 400),
                            child: ListTile(
                              title: Text(
                                "THE WEEKEND",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                      "assets/images/theweekend.png")),
                              subtitle: Text("Community - 1K+ Members",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white70)),
                              trailing: CircleAvatar(
                                  backgroundColor: Colors.red.shade800,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet(
                                        shape: Border.symmetric(
                                            vertical: BorderSide(
                                                width: 2, color: Colors.white),
                                            horizontal: BorderSide(
                                                width: 5, color: Colors.white)),
                                        context: context,
                                        builder: (context) =>
                                            BottomSheetContent(),
                                      );
                                    },
                                  )),
                            )),
                        stretchModes: [
                          StretchMode.zoomBackground,
                        ],
                        background: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/theweekend.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              color: Colors.red,
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "THE WEEKEND",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text("Community - 1K+ Members",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white70)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          SliverAppBar(
            backgroundColor: Colors.white70,
            elevation: 0,
            pinned: true,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(1000.0), child: SizedBox()),
            flexibleSpace: ProfileSection(),
          ),
        ],
      ),
    );
  }
}
