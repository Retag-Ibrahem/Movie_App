class Moviemodel {

  bool status;
  String message;
  List<dynamic>data;
  Moviemodel({required this.status,required this.message,required this.data});
  factory Moviemodel.fromjson(Map<String,dynamic>json){
    return Moviemodel(status: json["status"], message: json["message"], data: json["data"]);
  }



}