
class Member {
  final String email;
  final String firstName;
  final String lastName;
  final String phoneNumber;

  const Member({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  factory Member.fromJson(Map<String, dynamic> json){
    return switch (json){
      {
        'email': String email,
        'first_name': String firstName,
        'last_name': String lastName,
        'phone_nnumber': String phoneNumber,
      } => 
      Member(
        email: email, 
        firstName: firstName, 
        lastName: lastName, 
        phoneNumber: phoneNumber
      ),
     _ => throw const FormatException('Failed to load album.'),
    };
  }
}
