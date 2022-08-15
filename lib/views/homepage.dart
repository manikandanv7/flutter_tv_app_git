import 'package:flutter/material.dart';
import 'package:flutter_webview_tv_app/views/details_screen.dart';

import '../data/datas.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pocket TV'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: GridView(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: images
            .map((url) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          url: links[images.indexOf(url)],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      url,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
