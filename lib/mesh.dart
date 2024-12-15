import 'mesh_platform_interface.dart';

class Mesh {
  MeshPlatform _inst = MeshPlatform.instance;

  Future<String?> getPlatformVersion() {
    return _inst.getPlatformVersion();
  }

  Future<String> sendMessage(String s) {
    return MeshPlatform.instance.sendMessage(s);
  }

  void getEvents(void Function(String s) callBack) {
    return MeshPlatform.instance.getEvent(callBack);
  }
}
