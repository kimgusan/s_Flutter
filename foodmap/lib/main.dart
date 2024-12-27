import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _url = 'https://jsonplaceholder.typicode.com/albums';
  int _page = 1;
  final int _limit = 20;
  bool _hasNextPage = true;
  bool _isFirstLoadRunning = false;
  bool _isLoadMoreRunning = false;
  List _albumList = [];
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _initLoad();
    _controller = ScrollController()..addListener(_nextLoad);
  }

  void _initLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });

    try {
      final response =
          await http.get(Uri.parse("$_url?_page=$_page&_limit=$_limit"));

      setState(() {
        _albumList = jsonDecode(response.body);
      });
    } catch (e) {
      print(e.toString());
    }

    setState(() {
      _isFirstLoadRunning = false;
    });
  }

  void _nextLoad() async {
    if (_hasNextPage &&
        !_isFirstLoadRunning &&
        !_isLoadMoreRunning &&
        _controller.position.extentAfter < 30) {
      setState(() {
        _isLoadMoreRunning = true;
      });
      _page += 1;
      try {
        final response =
            await http.get(Uri.parse("$_url?_page=$_page&_limit=$_limit"));
        final List fetchedAlbums = jsonDecode(response.body);
        if (fetchedAlbums.isNotEmpty) {
          setState(() {
            _albumList.addAll(fetchedAlbums);
          });
        } else {
          setState(() {
            _hasNextPage = false;
          });
        }
      } catch (e) {
        print(e.toString());
      }
      setState(() {
        _isLoadMoreRunning = false;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_nextLoad);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("ListView Pagination"),
      ),
      body: _isFirstLoadRunning
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: _controller,
                    itemCount: _albumList.length,
                    itemBuilder: (context, index) => Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      child: ListTile(
                          title: Text(_albumList[index]['id'].toString()),
                          subtitle: Text(_albumList[index]['title'])),
                    ),
                  ),
                ),
                if (_isLoadMoreRunning == true)
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                if (_hasNextPage == false)
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                      child: Text(
                        "No more data to be fetched",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
              ],
            ),
    );
  }
}
