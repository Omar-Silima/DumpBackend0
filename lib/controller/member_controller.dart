import 'dart:convert';

import '../model/member.dart';
import 'package:http/http.dart' as http;

// const apiUrl = "http://localhost:8000/api";
// const apiUrl = "http://192.168.0.105:8000/api";
const apiUrl = "http://192.168.43.37:8000/api";

// get data
Future<Member> fetchMember() async {
  final response = await http.get(Uri.parse('$apiUrl/member/testone@gmail.com'));

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Member.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

// post data
Future<Member> createMember(String email, String first_name, String last_name,
    String phone_number) async {
  final response = await http.post(
    Uri.parse('$apiUrl/member'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      // "Access-Control-Allow-Origin": "*",
      // 'Accept': '*/*'
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'phone_number': phone_number,
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Member.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
