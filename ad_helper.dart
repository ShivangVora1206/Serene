import 'dart:io';

class AdHelper{
  static String get bannerAdUnitId{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/6300978111";
    }else{
        return "ca-app-pub-3940256099942544/6300978111";
    }
  }

  static String get inlinebannerAdUnitId{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/6300978111";
    }else{
      return "ca-app-pub-3940256099942544/6300978111";
    }
  }

  static String get interstitialAdUnitId40toFinal{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/8691691433";
    }else{
      return "ca-app-pub-3940256099942544/8691691433";
    }
  }
  static String get interstitialAdUnitIdFinaltoBase{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/8691691433";
    }else{
      return "ca-app-pub-3940256099942544/8691691433";
    }
  }

}