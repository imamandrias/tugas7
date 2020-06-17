class Datas{
  final String bhs_inggris;
  final String bhs_indonesia;
  Datas({this.bhs_inggris, this.bhs_indonesia});

  factory Datas.formJson(Map <String, dynamic> json){
    return new Datas(
      bhs_inggris: json['bhs_inggris'],
      bhs_indonesia: json['bhs_indonesia']
    );
  }
}