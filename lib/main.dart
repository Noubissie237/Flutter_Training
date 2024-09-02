import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    appTitle: 'Home',
  ));
}

class MyApp extends StatelessWidget {
  final String appTitle;

  const MyApp({super.key, required this.appTitle});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // darkTheme: ThemeData.dark(useMaterial3: true),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),

        // actions: const [
        //   Icon(Icons.person),
        //   Icon(Icons.access_time)
        // ],
        elevation: 8,
        centerTitle: true,
      ),
      endDrawer: const Drawer(),
      body: const Center(
        child: Text(
          'Salut les codeurs, comment allez vous aujourd\'hui ? comment se passe la formation ??',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontStyle: FontStyle.italic,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Comic sans ms'
          ),
        ),
      ),

      // body: Center(
      //   child: Container(
      //     width: 230,
      //     height: 128,
      //     alignment: Alignment.center,
      //     decoration: const BoxDecoration(
      //       color: Colors.red,
      //       borderRadius: BorderRadius.all(Radius.circular(56)),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black,
      //           blurRadius: 4,
      //           offset: Offset(2, 2)
      //         ),
      //       ],
      //       gradient: LinearGradient(colors: [
      //         Color.fromARGB(255, 21, 90, 23),
      //         Color.fromARGB(255, 76, 175, 80),
      //       ],
      //       ),
      //     ),
      //     child: const Text(
      //       "Hello NK",
      //     ),
      //   ),
      // ),
    );
  }
}
