
import 'package:gblibrary/res/strings_zh.dart';

Strings _res = StringsZh();

Strings get res => _res;

abstract class Strings {
  get login;

  get appName;

  get find;

  get shelf;

  get looking;

  get my;

  get publish;

  get cloud;

  get cloudCloud;

  get cloudLibrary;

  get search;

}

abstract class BaseStrings implements Strings {
  @override
  get appName => "藏书馆_Flutter";
}
