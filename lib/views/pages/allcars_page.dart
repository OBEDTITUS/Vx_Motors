import "package:flutter/material.dart";

class AllcarsPage extends StatelessWidget {
  const AllcarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Cars"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.5),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Divider(thickness: 1.5, color: Colors.grey[400], height: 2),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 120,
              ),
              child: Text(
                "Rents",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  letterSpacing: 8,
                ),

                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
