import 'package:dio/dio.dart';

class Network{
  Network(){
    init();
  }
  late Dio dio;
  void init(){
    dio = Dio(
      BaseOptions(
        baseUrl: "https://ecommerce.routemisr.com/api/v1",
        followRedirects: false,
        validateStatus: (status) {
          if(status !=null){
            if(status <300){
              return true;
            }else if(status == 401){
              return false;
            }else{
              return false;
            }
          }else{
            return false;
          }
        },

      )
    );
  }
}