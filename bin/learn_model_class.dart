void main() {
  
  //create instance to User model class set values for class varialbles
  User user = User(name: 'Senitha', age:2, country: 'Kurunegala');
  print(user.name);
  print(user.toJson());

  //create map object
  var mapObj = {
    "name": "sameera",
    "age": 34,
    "BornLocation": "Mathara",
  };

  print(mapObj);

  //pass map object values into User model class
  user = User.fromJson(mapObj);
  //print value from User model class
  print(user.name);

}

class User {
  String name;
  int? age;
  String? country;

  User({
    required this.name,
    this.age,
    this.country,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
      country: json['BornLocation'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['age'] = age;
    data['BornLocation'] = country;
    return data;
  }
}
