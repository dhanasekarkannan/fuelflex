import 'package:built_value/built_value.dart';
import 'requestInfo_model.dart';


part 'reqInfo_model.g.dart';
abstract class ReqInfo implements Built<ReqInfo, ReqInfoBuilder>{
  
  
  @BuiltValueField(wireName: "RequestInfo")
  String get reqInfo;
  ReqInfo._();
  factory ReqInfo([ void Function(ReqInfoBuilder) updates ] ) = _$ReqInfo;
}