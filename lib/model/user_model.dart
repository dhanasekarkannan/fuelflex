class UserModel {
   String title;
   String msg;
  

  UserModel({this.title, this.msg});

  UserModel.fromJson(Map<String, dynamic> json){
    title = json['title'];
    msg = json['msg'];
  }
  Map<String, Map> toJson(){
   final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['msg'] = this.msg;
    return data;
  }
}