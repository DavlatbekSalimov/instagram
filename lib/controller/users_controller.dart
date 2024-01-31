import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:instagram/pages/model/users_model.dart';

class UserController {
  Dio dio = Dio();
  List<UsersModel> users = [];
  final emailComtroller = TextEditingController();
  final passwordComtroller = TextEditingController();
  ValueNotifier<bool> isLoadig = ValueNotifier(false);

  Future<void> onInit() async {
    isLoadig.value = true;
    final result = await dio
        .get('https://654df18dcbc32535574219e6.mockapi.io/api/v1/registr');
    debugPrint('${result.data}');

    if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) <= 300) {
      users = (result.data as List)
          .map(
            (e) => UsersModel.fromjson(e),
          )
          .toList();
    }
    isLoadig.value = false;
  }
}


// import 'package:beginnerapi/pagethre/model/infomodel.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// class ModelController {
//   final useridController = TextEditingController();
//   final titleController = TextEditingController();
//   final bodyController = TextEditingController();
//   Dio modeldio = Dio();
//   List<InfoModek> modelss = [];

//   Future<void> onInit() async {
//     var result =
//         await modeldio.get('https://jsonplaceholder.typicode.com/posts');
//     if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) <= 300) {
//       modelss = (result.data as List)
//           .map(
//             (e) => InfoModek.fromJson(e),
//           )
//           .toList();
//     }
//   }

//   Future<void> createInfo(InfoModek param) async {
//     final result =
//         await modeldio.post('https://jsonplaceholder.typicode.com/posts');
//     if ((result.statusCode ?? 0) >= 200 && (result.statusCode ?? 0) <= 300) {
//       debugPrint('Succses');
//     } else {
//       debugPrint('Error');
//     }
//   }
// }
