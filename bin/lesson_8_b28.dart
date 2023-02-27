// import 'package:lesson_8_b28/extensions/class_extension.dart';
// import 'package:lesson_8_b28/extensions/user_extensions.dart';
// import 'package:lesson_8_b28/model/class.dart';
// import 'package:lesson_8_b28/model/user_model.dart';
//
// void main() {
//   User user = User("01", "User 1", "userone@mail.edu");
//   print(user.showInfo());
//
//   ClassToExtend object = ClassToExtend(aNumber: 10, astring: "astring");
//   object.helloWorld();
//   object.hello;
// }

import 'dart:io';

void main (){
  note();
}
Map<int?,String> textoplam ={};
void noteWrite() {
  stdout.write('Nechinchi eslatma ekanligini kiriting: ');
  int? key = int.tryParse(stdin.readLineSync() ?? '0');
  if (key is! int) {
    print("Raqam kiriting!");
    if(textoplam.containsKey(key)){
      print("Eslatmalar ichida bunday raqam mavjud!");
      noteWrite();
    }
    print("Qaytadan kiriting!");
    noteWrite();
  }
  print("Eslatma qo'shishda davom eting!");
  stdout.write('Yangi eslatma qoshing: ');
  String text = stdin.readLineSync() ?? '';
  if (text.isEmpty) {
    print("Siz yangi eslatma qoshmadingiz Iltimos eslatma qoshing: ");
    noteWrite();
  } else {
    print('Foydalanganingiz uchun raxmat!');
  }

  textoplam.addAll({key: text});
  note();
}
void note (){
  print('1.Note read');
  print('2.Note write');
  print('3.Note edit');
  print('4.Note delete');
  print('5.Exit');
  stdout.write('Tanlovingizni kiriting: ');
  int? command = int.tryParse(stdin.readLineSync()??'0');
  switch (command){
    case 1 :
      noteRead();
      break;
    case 2 :
      noteWrite();
      break;
    case 3 :
      noteEdit();
      break;
    case 4 :
      noteDelete ();
      break;
    case 5 :
      print("Xizmatdan foydalanganingiz uchun raxmat!");
      break;
    default:
      print ("Siz belgilanmagan tanlovni kiritdingiz , Iltimos qaytadan urinib ko'ring!");
      note();
  }
}

void noteDelete() {
  print("Eslatmangizni o'chirmoqchimisiz!");
  print("1.Ha");
  print("2.Yo'q");
  int? deleteChoise = int.tryParse(stdin.readLineSync() ?? '0');
  if (deleteChoise == 1) {
    stdout.write("O'chirmoqchi bo'lgan eslatma raqamini kiriting: ");
    int? valueNum =int.tryParse(stdin.readLineSync()??'0');
    if(!textoplam.containsKey(valueNum)){
      print("Eslatmalar ichida bunday raqamda eslatma topilmadi! Qaytadan urinib ko'ring!");
    }
    for (int i = 0; i < textoplam.length; i++) {
      if (textoplam.containsKey(valueNum)){
        textoplam.remove(valueNum);
        print("Eslatma muvaffaqiyatli o'chirildi!");
      }
    }
  }else if (deleteChoise == 2){
    print ('Tanlovingizdan xursandmiz!');
    note();
  }else{
    print("Iltimos tog'ri tanlov qiling!");
    noteDelete();
  }
  note();
}



void noteRead() {
  print('Sizning eslatmalaringiz!!');
  print ("Assalomu alaykum.Xush kelibsiz eslatmalaringizga!! ");
  print(textoplam);
  note();
}




void noteEdit() {
  stdout.write("Tahrirlamoqchi bo'lgan eslatmangizni raqamini tanlang: ");
  int? editTextNumber = int.tryParse(stdin.readLineSync() ?? '');
  if (!textoplam.containsKey(editTextNumber)) {
    print(
        "Eslatma raqamlari ichida bunday son topilmadi! Iltimos qaytadan urinib ko'ring.");
    noteEdit();
  }
  stdout.write("Yangilang:: ");
  String setText = stdin.readLineSync() ?? '';
  if (setText.isEmpty) {
    print("Eslatma yangilanmadi, Iltimos yangilash uchun eslatma kiriting!");
    noteEdit();
  } else {
    print("Eslatmangiz muvaffaqiyatli yangilandi!!");
  }
  for (int i = 0; i < textoplam.length; i++) {
    if (textoplam.containsKey(editTextNumber)) {
      textoplam[editTextNumber] = setText;
    } else {
      print("Eslatmalar ichida bunday raqam topilmadi!");
      noteEdit();
    }
  }
  note();
}