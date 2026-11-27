/* 
{
            "id": "1",
            "author": {
                "username": "carmen_h2h"
            },
            "post": {
                "image": "http://h2h.bangunsistem.com/uploads/defaults/carmen.jpg",
                "desc": "Halo S2U! Senang banget bisa ketemu kalian semua hari ini 🩵✨ #Carmen #Hearts2Hearts"
            },
            "createdAt": "2026-02-24T10:00:00.000Z"
},
*/

class PostModel {
  final String id;
  final String username;
  final String image;
  final String desc;
  final String date;

  new({
    required this.id,
    required this.username,
    required this.image,
    required this.desc,
    required this.date,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id']?.toString() ?? '',
      username: json['author']?.toString() ?? '',
      image: json['post']['image']?.toString() ?? '',
      desc: json['post']['desc']?.toString() ?? '',
      date: json['createdAt']?.toString() ?? '',
    );
  }
}
