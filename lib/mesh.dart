import 'package:mesh/mesh_event_interface.dart';

import 'mesh_platform_interface.dart';

class Mesh {
  MeshPlatform _meth_chan = MeshPlatform.instance;
  MeshEventPlatform _even_chan = MeshEventPlatform.instance;

  Future<String?> getPlatformVersion() {
    return _meth_chan.getPlatformVersion();
  }

  Future<String> sendMessage(String s) {
    return _meth_chan.sendMessage(s);
  }

  getEvents(void Function(String s) callBack) {
    print('trying to get events');
    _even_chan.startListening(callBack);
  }
}
