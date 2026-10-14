import 'package:async_json/async_json.dart';
import 'package:test/test.dart';

void main(){
  test('fromJson 解析字段', (){
    final b=Book.fromJson({'id':'b01','title':'跨平台之路','category':'计算机技术','author':'张承志','rating':5,'borrowCount':9,'month':'1月'});
    expect(b.title,'跨平台之路');
    expect(b.borrowCount,9);
  });
}