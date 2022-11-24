import 'package:flutter/cupertino.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';

class WatchListDetail extends StatelessWidget {
  final WatchList data;
  const WatchListDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: myDrawer(),
      body: Container(
        margin: new EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Center(
              child: Text(data.film_title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)
              ),
            ),
            Row(
              children: [
                Text("Release Date : ",
                  style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                ),
                Text(data.release_date,
                  style:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 16)
                ),
              ],
            ),
            Row(
              children: [
                Text("Rating : ",
                  style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                ),
                Text(data.film_rating.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)
                ),
              ],
            ),
            Row(
              children: [
                Text("Status : ",
                  style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                  ),
                if (data.film_watched == "Yes")
                  Text("Watched",
                    style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 16)
                  ),
                if (data.film_watched == "No")
                  Text("Unwatched",
                    style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 16)
                  ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Review : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  data.film_review,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}