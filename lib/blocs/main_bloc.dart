import 'package:gblibrary/blocs/bloc_provider.dart';

class MainBloc implements BlocBase{
  
  
  
  @override
  void dispose() {
  }

  @override
  Future getData({String labelId, int page}) {
    throw UnimplementedError();
  }

  @override
  Future onLoadMore({String labelId}) {
    throw UnimplementedError();
  }

  @override
  Future onRefresh({String labelId}) {
    throw UnimplementedError();
  }

  MainBloc();
  
}