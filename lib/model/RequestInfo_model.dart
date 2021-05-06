import 'package:built_value/built_value.dart';

part 'requestInfo_model.g.dart';

abstract class RequestInfo implements Built<RequestInfo, RequestInfoBuilder> {
  @BuiltValueField(wireName: "RequestType")
  String get requestType;

  @nullable
  @BuiltValueField(wireName: "TermSerialNum")
  String get termSerialNum;

  @nullable
  String get version;

  

  RequestInfo._();
  factory RequestInfo([void Function(RequestInfoBuilder) updates]) =
      _$RequestInfo;
}
