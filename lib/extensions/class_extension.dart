import '../model/class.dart';

extension ExtensionName on ClassToExtend  {
  /// This is method Muhammadyusuf
  String helloWorld() {
    return '$runtimeType Type says hello to the world';
  }

  /// Nursulton
  String get hello => 'hello $astring';
  int operator +(int other) => aNumber + other;


  void test() {
    manaEndiIshlatibKor;
    salom();
  }
}

mixin ETest {}

void main() {

  ClassToExtend object = ClassToExtend(aNumber: 10, astring: "astring");
  object.helloWorld();
}