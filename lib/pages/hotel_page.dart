import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HotelPage extends StatefulWidget {
  final String pseudo;

  const HotelPage({required this.pseudo});

  @override
  _HotelPageState createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  Map<String, dynamic>? hotelData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchHotelData();
  }

  fetchHotelData() async {
    final response = await http.get(Uri.parse(
        'https://api.guest-welcome.com/api/apihotelsmain/${widget.pseudo}'));

    if (response.statusCode == 200) {
      setState(() {
        hotelData = json.decode(response.body);
        isLoading = false;
      });
    } else {
      // Handle the error
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Loading...')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (hotelData == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Hotel not found')),
        body: Center(child: Text('Hotel not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(hotelData!['hotel']['title'])),
      body: ListView(
        children: [
          Text('Languages:'),
          ...hotelData!['languages'].map<Widget>((language) {
            return ListTile(
              leading: Image.network(
                  'https://api.guest-welcome.com/storage/${language['image']}'),
              title: Text(language['name']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
