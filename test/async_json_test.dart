import 'dart:convert';
import 'package:async_json/async_json.dart';
import 'package:test/test.dart';

void main(){
  final j={'id':'b01','title':'跨平台之路','category':'计算机技术','author':'张承志','rating':5,'borrowCount':9,'month':'1月'};
  test('fromJson 解析字段', (){
    final b=Book.fromJson(j); 
    expect(b.title,'跨平台之路');
    expect(b.borrowCount,9);
  });

  test('roundtrip: 编解码后toJson与原Map一致',(){ 
    final b=Book.fromJson(j); 
    final b2=Book.fromJson(jsonDecode(jsonEncode(b.toJson()))as Map<String, dynamic >); 
    expect(b2.toJson(),j);
  });

  test('缺失字段兜底为默认值',(){ 
    final b=Book.fromJson({'id':'b02'}); 
    expect(b.title,'未命名'); 
    expect(b.borrowCount,0);
  });
}