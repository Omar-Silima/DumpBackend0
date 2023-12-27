import 'dart:convert';

import '../model/member.dart';
import 'package:http/http.dart' as http;

const apiUrl = "http://127.0.0.1:8000/api";

Future<Member> createMember(
    String email, String firstName, String lastName, String phoneNumber) async {
  final response = await http.post(
    Uri.parse('$apiUrl/member'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'firstName': firstName,
      'last': lastName,
      'phoneNumber': phoneNumber,
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
