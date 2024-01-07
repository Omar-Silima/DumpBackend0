import 'package:flutter/material.dart';
import 'package:probation/controller/member_controller.dart';
import 'package:probation/model/member.dart';

class MemberList extends StatefulWidget {
  const MemberList({super.key});

  @override
  State<MemberList> createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  late Future<Member> futureMember;

  @override
  void initState() {
    super.initState();
    futureMember = fetchMember();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List of Members',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Members List'),
        ),
        body: Center(
          child: FutureBuilder(
              future: futureMember,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.email);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // show loading spinner
                return const CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
