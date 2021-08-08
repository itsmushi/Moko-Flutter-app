import 'package:flutter/material.dart';

class TopSearch extends StatefulWidget {
  @override
  _TopSearchState createState() => _TopSearchState();
}

class _TopSearchState extends State<TopSearch> {
  final TextEditingController _filter = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 165, 0),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(-50),
        ),
      ),
      child: SizedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _filter,
                  decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search),
                    hintText: 'Find your taste',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),),
                        
                  ),
                ),
              ),
            ]),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
