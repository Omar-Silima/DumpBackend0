
class Member {
  final String email;
  final String first_name;
  final String last_name;
  final String phone_number;

  const Member({
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.phone_number,
  });

  factory Member.fromJson(Map<String, dynamic> json){
    return switch (json){
      {
        'email': String email,
        'first_name': String first_name,
        'last_name': String last_name,
        'phone_number': String phone_number,
      } => 
      Member(
        email: email, 
        first_name: first_name, 
        last_name: last_name, 
        phone_number: phone_number
      ),
     _ => throw const FormatException('Failed to load member.'),
    };
  }
}
