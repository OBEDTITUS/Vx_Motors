import 'package:flutter/material.dart';
import 'package:ty_motors/views/pages/allcars_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            ListTile(
              title: Text(
                "RECOMMEDNDED FOR YOU",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 3,
                  color: Colors.blueGrey,
                  // suffixIcon: Icon(Icons.more),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: Center(child: Text("No results found"))),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return WidgetTree();
            //         },
            //       ),
            //     );
            //   },
            //   style: ElevatedButton.styleFrom(
            //     minimumSize: Size(double.infinity, 15),
            //     backgroundColor: Colors.tealAccent,
            //   ),
            //   child: Text(
            //     "View All Our Cars",
            //     style: TextStyle(fontSize: 16, color: Colors.deepOrange),
            //   ),
            // ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AllcarsPage();
                    },
                  ),
                );
              },
              label: Text("View All Our Cars"),
              icon: Icon(Icons.directions_car),
            ),
          ],
        ),
      ),
    );
  }
}
