class Imagetodolist {
  int? seq;
  final String contents;
  final String image;
  final String insertdate;

  Imagetodolist(
    {
      this.seq,
      required this.contents,
      required this.image,
      required this.insertdate,
    }
  );

  factory Imagetodolist.fromJson(Map<String, dynamic> json){
    return Imagetodolist(
      seq:  json['seq'],
      contents: json['contents'], 
      image: json['image'], 
      insertdate: json['insertdate']
    );
  }

  Map<String, dynamic> toJSON(){
    return {
      'seq' : seq,
      'contents' : contents,
      'image' : image,
      'insertdate' : insertdate
    };
  }
}// class