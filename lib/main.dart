import 'package:flutter/material.dart';
import 'package:salah/dimensions.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Dimensions(
        h: MediaQuery.of(context).size.height,
        w: MediaQuery.of(context).size.width);
    return Scaffold(
      body: Container(
        width: Dimensions.width,
        height: Dimensions.height,
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  SizedBox(
                    height: .3 * height,
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://mediaaws.almasryalyoum.com/news/verylarge/2021/12/29/1704609_0.jpg"),
                      radius: 65,
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Click on me"))
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 300,
                    width: Dimensions.width,
                    child: Image(
                      image: NetworkImage(
                          "https://mediaaws.almasryalyoum.com/news/verylarge/2021/12/29/1704609_0.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: .6 * Dimensions.height,
                    width: Dimensions.width,
                    color: Colors.amber,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Dimensions.height,
        width: Dimensions.width,
      ),
    );
  }
}