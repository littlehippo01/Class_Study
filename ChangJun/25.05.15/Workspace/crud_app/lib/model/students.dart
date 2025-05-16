class Students {
  final String code;
  final String name;
  final String dept;
  final String phone;
  final String address;

  Students(
    {
      required this.code,
      required this.name,
      required this.dept,
      required this.phone,
      required this.address,
    }
  );

  factory Students.fromJson(Map<String, dynamic> json){
    return Students(
      code: json['code'], 
      name: json['name'], 
      dept: json['dept'], 
      phone: json['phone'], 
      address: json['address']
    );
  }
// Post 를 사용하면 Map type 으로 만들어서 이동 시켜 주어야 한다!
  Map<String, dynamic> toJSON(){
    return{
      'code' : code,
      'name' : name,
      'dept' : dept,
      'phone' : phone,
      'address' : address,
    };
  }
}// class