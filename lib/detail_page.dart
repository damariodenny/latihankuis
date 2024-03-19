import 'package:flutter/material.dart';
import 'package:latihankuis/tourism_place.dart';

class DetailPage extends StatefulWidget {
  final TourismPlace place;

  DetailPage({required this.place});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.place.imageUrls.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    child: Image.network(
                      widget.place.imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.place.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    widget.place.location,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    widget.place.description,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  // Add other attributes if needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
