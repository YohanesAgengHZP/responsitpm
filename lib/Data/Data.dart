import 'network_services.dart';

const charactersURL = 'https://api.genshin.dev/characters';
const weaponURL = 'https://api.genshin.dev/weapons';
const charaTapURL = 'https://api.genshin.dev/characters';
const weaponTapURL = 'https://api.genshin.dev/weapons';

class TopModel {
  Future<dynamic> getCharacters() async {
    NetworkService networkService = NetworkService(charactersURL);
    var charactersData = await networkService.getData();
    return charactersData;
  }

  Future<dynamic> getCharaIcon(String charaName) async {
    NetworkService networkService = NetworkService('https://api.genshin.dev/characters/$charaName/icon');
    var weaponsData = await networkService.getData();
    return weaponsData;
  }

  Future<dynamic> getWeapons() async {
    NetworkService networkService = NetworkService(weaponURL);
    var weaponsData = await networkService.getData();
    return weaponsData;
  }

  Future<dynamic> charaTap(String charaName) async {
    NetworkService networkService =
    NetworkService('https://api.genshin.dev/characters/$charaName');
    var charaTapData = await networkService.getData();
    return charaTapData;
  }

  Future<dynamic> weaponTap(int mangaID) async {
    NetworkService networkService =
    NetworkService('https://api.genshin.dev/weapons/$mangaID');
    var weaponTapData = await networkService.getData();
    return weaponTapData;
  }
}
