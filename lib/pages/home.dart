import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();
  List<String> items = [];
  int page = 1;

  @override
  void initState() {
    super.initState();
    fetchData();
    _controller.addListener(() {
      if (_controller.position.maxScrollExtent == _controller.offset) {
        fetchMoreData();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future fetchData() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=id&apiKey=1326d0280b38420395a13a90ed3a748e');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final List<dynamic> newItems = jsonBody['articles'];

      if (mounted) {
        setState(() {
          items = newItems.map((data) => data['title'].toString()).toList();
        });
      }
    }
  }

  Future fetchMoreData() async {
    // const limit = 15;
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=1326d0280b38420395a13a90ed3a748e');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final List<dynamic> newItems = jsonBody['articles'];

      if (mounted) {
        setState(() {
          items.addAll(
              newItems.map((data) => data['title'].toString()).toList());
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        title: const Text('All About News'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          controller: _controller,
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            if (index < items.length) {
              final item = items[index];

              return Card(
                child: ListTile(title: Text(item)),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
