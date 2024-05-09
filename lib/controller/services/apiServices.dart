import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>?> fetchData() async {
    final url = 'https://ajcjewel.com:4000/api/global-gallery/list';
    final token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfdXNlcklkXyI6IjYzMDI2ZjIxNWE5ZDVjNDY1NzQ3MTMxYSIsIl9lbXBsb3llZUlkXyI6IjYzMDI2ZjIxYTI1MTZhMTU0YTUxY2YxOSIsIl91c2VyUm9sZV8iOiJzdXBlcl9hZG1pbiIsImlhdCI6MTcxMTQ0NTY1OSwiZXhwIjoxNzQyOTgxNjU5fQ.lE1Gbdm8YZ6Fany4184Pb7kSUg-z6Rk8Ag1irB3fstc';
    try {
      final response = await _dio.get(
        url,
        options: Options(headers: {
          'Authorization': 'Bearer $token',
        }),
      );
      return response.data;
    } catch (error) {
      print('Error fetching data: $error');
      return null;
    }
  }
}
