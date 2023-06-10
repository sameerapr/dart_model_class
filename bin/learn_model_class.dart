// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:learn_model_class/learn_model_class.dart' as learn_model_class;

void main() {
   var mapObj = {
  "name":"sameera",
  "age":34,
  "country":"Sri Lanka",
  };

  print(mapObj);


  User user = User();

  user = User.fromJson(mapObj);
  print(user.name);

}

class User {
   String? name ;
   int? age ;
   String? country;

  User({
     this.name,
     this.age,
     this.country,
  });

    factory User.fromJson(Map<String,dynamic>json){
    return User(
      name:json['name'],
      age:json['age'],
      country: json['country'],
    );
  }
}
