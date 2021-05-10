import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:fuelflex/model/reqInfo_model.dart';
import 'package:fuelflex/model/requestInfo_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  RequestInfo,
  ReqInfo
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();