import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'built_all_inboxes.dart';
import 'built_inbox.dart';
import 'built_item.dart';
import 'built_all_items.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltItem, BuiltAllItems, BuiltInbox , BuiltAllInboxes])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();