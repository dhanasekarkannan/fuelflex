// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/merchant_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:fuelflex/model/resp_info.dart';
import 'package:fuelflex/model/store_info.dart';
import 'package:fuelflex/model/switch_info.dart';
import 'package:fuelflex/model/terminal_info.dart';

part 'serializers.g.dart';

/// Example of how to use built_value serialization.
///
/// Declare a top level [Serializers] field called serializers. Annotate it
/// with [SerializersFor] and provide a `const` `List` of types you want to
/// be serializable.
///
/// The built_value code generator will provide the implementation. It will
/// contain serializers for all the types asked for explicitly plus all the
/// types needed transitively via fields.
///
/// You usually only need to do this once per project.
@SerializersFor([
  MasterKeyInfo,
  MerchantInfo,
  ReqInfo,
  RequestInfo,
  RespInfo,
  StoreInfo,
  SwitchInfo,
  TerminalInfo,
])
Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
