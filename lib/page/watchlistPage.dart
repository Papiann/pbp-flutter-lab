import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/watchlistDetail.dart';
import 'package:counter_7/api/fetchData.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
        backgroundColor: Color.fromARGB(255, 189, 20, 8),
      ),
      drawer: myDrawer(),
      body: FutureBuilder(
        future: fetchToDo(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Tidak ada watchlist :(",
                    style:
                        TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ListTile(
                  trailing: Checkbox(
                    value: statusFilm[index],
                    onChanged: (bool? newValue) {
                      setState(() {
                        statusFilm[index] = !statusFilm[index];
                        snapshot.data![index].film_watched = (newValue!)? "Yes" : "No";
                      });
                    },
                  ),
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WatchListDetail(
                                data: snapshot.data![index])
                        )
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: statusFilm[index]
                        ? BoxDecoration(
                          color: Color.fromARGB(255, 82, 179, 85),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                              offset: Offset(0, 4) 
                            )
                          ]
                        )
                        : BoxDecoration(
                          color: Color.fromARGB(255, 189, 20, 8),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                                blurRadius: 2.0,
                                offset: Offset(0, 4) 
                            )
                          ]
                        ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${snapshot.data![index].film_title}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                )
              );
            }
          }
        }
      )
    );
  }
}