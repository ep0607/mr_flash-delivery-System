import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:hero_drawer/api/model/built_all_sends.dart';
import 'package:hero_drawer/api/model/built_send.dart';

import 'built_all_takes.dart';
import 'built_take.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltTake,BuiltAllTakes,BuiltSend,BuiltAllSends])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();