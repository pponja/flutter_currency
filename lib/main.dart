import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShowTitle = true;

  void toggleTitle() {
    setState(() {
      isShowTitle = !isShowTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
            fontSize: 100,
          ),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isShowTitle ? MyLargeTitle() : Text('nothing showing'),
              IconButton(
                onPressed: toggleTitle,
                icon: Icon(Icons.remove_red_eye),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class MyLargeTitle extends StatelessWidget {
//   const MyLargeTitle({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Large Title',
//       style: TextStyle(
//         fontSize: 30,
//         color: Theme.of(context)
//             .textTheme
//             .titleLarge
//             ?.color, // MyLargeTitle widget doesn't know if the textTheme.titleLarge is set or not
//       ),
//     );
//   }
// }

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0; // 대부분의 경우 여기에 상태 변수를 초기화할 수 있습니다. 그리고 이걸로 충분해요.

  @override
  void initState() {
    // 부모 위젯에 의존하는 데이터를 초기화할 경우.
    // build 메서드보다 먼저 호출됩니다.

    super.initState(); // 반드시 호출해야 합니다.
    print("Hello initState in MyLargeTitle");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Bye dispose in MyLargeTitle");
  }

  @override
  Widget build(BuildContext context) {
    print("Hello build in MyLargeTitle");
    return Text(
      'Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context)
            .textTheme
            .titleLarge
            ?.color, // MyLargeTitle widget doesn't know if the textTheme.titleLarge is set or not
      ),
    );
  }
}
