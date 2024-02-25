import 'dart:convert';

class FormViewModel {
  final String name;
  final String email;
  final int age;
  final double weight;
  final double height;
  final String phone;
  final bool enabled;

  const FormViewModel({
    required this.name,
    required this.email,
    required this.age,
    required this.weight,
    required this.height,
    required this.phone,
    required this.enabled,
  });

  const FormViewModel.empty() : this(name: '', email: '', age: 0, weight: 0.0, height: 0.0, phone: '', enabled: true);

  @override
  bool operator ==(covariant FormViewModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.email == email && other.age == age && other.weight == weight && other.height == height && other.phone == phone && other.enabled == enabled;
  }

  @override
  int get hashCode {
    return name.hashCode ^ email.hashCode ^ age.hashCode ^ weight.hashCode ^ height.hashCode ^ phone.hashCode ^ enabled.hashCode;
  }

  FormViewModel copyWith({
    String? name,
    String? email,
    int? age,
    double? weight,
    double? height,
    String? phone,
    bool? enabled,
  }) {
    return FormViewModel(
      name: name ?? this.name,
      email: email ?? this.email,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      phone: phone ?? this.phone,
      enabled: enabled ?? this.enabled,
    );
  }

  @override
  String toString() {
    return 'FormViewModel(name: $name, email: $email, age: $age, weight: $weight, height: $height, phone: $phone, enabled: $enabled)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'age': age,
      'weight': weight,
      'height': height,
      'phone': phone,
      'enabled': enabled,
    };
  }

  factory FormViewModel.fromMap(Map<String, dynamic> map) {
    return FormViewModel(
      name: map['name'] as String,
      email: map['email'] as String,
      age: map['age'] as int,
      weight: map['weight'] as double,
      height: map['height'] as double,
      phone: map['phone'] as String,
      enabled: map['enabled'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory FormViewModel.fromJson(String source) => FormViewModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
