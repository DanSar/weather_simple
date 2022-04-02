import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityName;
  late String cityString;

  // Здесь содержится список городов
  final List<Map<String, dynamic>> _allCity = [
    {"id":	1	, "name":"Tokyo"},
    {"id":	2	, "name":"Delhi"},
    {"id":	3	, "name":"Shanghai"},
    {"id":	4	, "name":"Dhaka"},
    {"id":	5	, "name":"Sao Paulo"},
    {"id":	6	, "name":"Mexico City"},
    {"id":	7	, "name":"Cairo"},
    {"id":	8	, "name":"Beijing"},
    {"id":	9	, "name":"Mumbai"},
    {"id":	10	, "name":"Osaka"},
    {"id":	11	, "name":"Chongqing"},
    {"id":	12	, "name":"Kyiv"},
    {"id":	13	, "name":"Istanbul"},
    {"id":	14	, "name":"Kinshasa"},
    {"id":	15	, "name":"Lagos"},
    {"id":	16	, "name":"Buenos Aires"},
    {"id":	17	, "name":"Kolkata"},
    {"id":	18	, "name":"Manila"},
    {"id":	19	, "name":"Kharkiv"},
    {"id":	20	, "name":"Guangzhou"},
    {"id":	21	, "name":"Rio De Janeiro"},
    {"id":	22	, "name":"Lahore"},
    {"id":	23	, "name":"Bangalore"},
    {"id":	24	, "name":"Shenzhen"},
    {"id":	25	, "name":"Moscow"},
    {"id":	26	, "name":"Chennai"},
    {"id":	27	, "name":"Bogota"},
    {"id":	28	, "name":"Paris"},
    {"id":	29	, "name":"Jakarta"},
    {"id":	30	, "name":"Lima"},
    {"id":	31	, "name":"Bangkok"},
    {"id":	32	, "name":"Hyderabad"},
    {"id":	33	, "name":"Seoul"},
    {"id":	34	, "name":"Nagoya"},
    {"id":	35	, "name":"London"},
    {"id":	36	, "name":"Chengdu"},
    {"id":	37	, "name":"Nanjing"},
    {"id":	38	, "name":"Donetsk"},
    {"id":	39	, "name":"Ho Chi Minh City"},
    {"id":	40	, "name":"Luanda"},
    {"id":	41	, "name":"Wuhan"},
    {"id":	42	, "name":"Donbass"},
    {"id":	43	, "name":"Ahmedabad"},
    {"id":	44	, "name":"Kuala Lumpur"},
    {"id":	45	, "name":"New York City"},
    {"id":	46	, "name":"Hangzhou"},
    {"id":	47	, "name":"Surat"},
    {"id":	48	, "name":"Suzhou"},
    {"id":	49	, "name":"Hong Kong"},
    {"id":	50	, "name":"Riyadh"},
    {"id":	51	, "name":"Shenyang"},
    {"id":	52	, "name":"Baghdad"},
    {"id":	53	, "name":"Dongguan"},
    {"id":	54	, "name":"Luhansk"},
    {"id":	55	, "name":"Dar Es Salaam"},
    {"id":	56	, "name":"Pune"},
    {"id":	57	, "name":"Santiago"},
    {"id":	58	, "name":"Madrid"},
    {"id":	59	, "name":"Odesa"},
    {"id":	60	, "name":"Toronto"},
    {"id":	61	, "name":"Dnipropetrovsk"},
    {"id":	62	, "name":"Khartoum"},
    {"id":	63	, "name":"Johannesburg"},
    {"id":	64	, "name":"Singapore"},
    {"id":	65	, "name":"Dalian"},
    {"id":	66	, "name":"Qingdao"},
    {"id":	67	, "name":"Zhengzhou"},
    {"id":	68	, "name":"Zaporizhia"},
    {"id":	69	, "name":"Barcelona"},
    {"id":	70	, "name":"Saint Petersburg"},
    {"id":	71	, "name":"Lviv"},
    {"id":	72	, "name":"Yangon"},
    {"id":	73	, "name":"Fukuoka"},
    {"id":	74	, "name":"Alexandria"},
    {"id":	75	, "name":"Guadalajara"},
    {"id":	76	, "name":"Ankara"},
    {"id":	77	, "name":"Chittagong"},
    {"id":	78	, "name":"Addis Ababa"},
    {"id":	79	, "name":"Melbourne"},
    {"id":	80	, "name":"Nairobi"},
    {"id":	81	, "name":"Sevastopol"},
    {"id":	82	, "name":"Sydney"},
    {"id":	83	, "name":"Monterrey"},
    {"id":	84	, "name":"Changsha"},
    {"id":	85	, "name":"Brasilia"},
    {"id":	86	, "name":"Cape Town"},
    {"id":	87	, "name":"Mykolaiv"},
    {"id":	88	, "name":"Urumqi"},
    {"id":	89	, "name":"Kunming"},
    {"id":	90	, "name":"Changchun"},
    {"id":	91	, "name":"Hefei"},
    {"id":	92	, "name":"Shantou"},
    {"id":	93	, "name":"Xinbei"},
    {"id":	94	, "name":"Kabul"},
    {"id":	95	, "name":"Ningbo"},
    {"id":	96	, "name":"Tel Aviv"},
    {"id":	97	, "name":"Yaounde"},
    {"id":	98	, "name":"Rome"},
    {"id":	99	, "name":"Shijiazhuang"},
    {"id":	100	, "name":"Monreal"},
    {"id":	101	, "name":"Novosibirsk"},
    {"id":	102	, "name":"Yekaterinburg"},
    {"id":	103	, "name":"Kazan"},
    {"id":	104	, "name":"Nizhny Novgorod"},
    {"id":	105	, "name":"Chelyabinsk"},
    {"id":	106	, "name":"Samara"},
    {"id":	107	, "name":"Omsk"},
    {"id":	108	, "name":"Rostov-on-Don"},
    {"id":	109	, "name":"Ufa"},
    {"id":	110	, "name":"Krasnoyarsk"},
    {"id":	111	, "name":"Voronezh"},
    {"id":	112	, "name":"Mariupol"},
    {"id":	113	, "name":"Volgograd"},
    {"id":	114	, "name":"Krasnodar"},
    {"id":	115	, "name":"Vinnytsia"},
    {"id":	116	, "name":"Tyumen"},
    {"id":	117	, "name":"Tolyatti"},
    {"id":	118	, "name":"Izhevsk"},
    {"id":	119	, "name":"Barnaul"},
    {"id":	120	, "name":"Ulyanovsk"},
    {"id":	121	, "name":"Irkutsk"},
    {"id":	122	, "name":"Khabarovsk"},
    {"id":	123	, "name":"Makhachkala"},
    {"id":	124	, "name":"Yaroslavl"},
    {"id":	125	, "name":"Vladivostok"},
    {"id":	126	, "name":"Orenburg"},
    {"id":	127	, "name":"Tomsk"},
    {"id":	128	, "name":"Makiivka"},
    {"id":	129	, "name":"Simferopol"},
    {"id":	130	, "name":"Ryazan"},
    {"id":	131	, "name":"Naberezhnye Chelny"},
    {"id":	132	, "name":"Astrakhan"},
    {"id":	133	, "name":"Kirov"},
    {"id":	134	, "name":"Penza"},
    {"id":	135	, "name":"Balashikha"},
    {"id":	136	, "name":"Lipetsk"},
    {"id":	137	, "name":"Cheboksary"},
    {"id":	138	, "name":"Kaliningrad"},
    {"id":	139	, "name":"Tula"},

  ];
  // Этот список содержит данные для представления списка
  List<Map<String, dynamic>> _foundCity = [];
  @override
  void initState() {
    // вначале показаны все города
    _foundCity = _allCity;
    super.initState();
  }

  // Эта функция вызывается всякий раз, когда изменяется текстовое поле
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // если поле поиска пусто или содержит только пробелы, мы отобразим всех пользователей
      results = _allCity;
    } else {
      results = _allCity.where((city) =>
      //contains - содержит ли city["name] - enteredKeyword
      city["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // мы используем метод toLowerCase(), чтобы сделать его нечувствительным к регистру
    }

    // Обновить пользовательский интерфейс
    setState(() {
      _foundCity = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search city'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // Текстовое поле
            TextField(
              // Обратный вызов всякий раз, когда текст изменяется
              onChanged: (value) => _runFilter(value),
              // onChanged: (value) => cityString = value,
              onSubmitted: (value){
                cityName = value;
                Navigator.pop(context, cityName);
              },
              decoration: const InputDecoration(
                labelText: 'Search', suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              // Проверяем - является ли строка пустой
              child: _foundCity.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundCity.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: (){
                    cityName = _foundCity[index]["name"].toString();
                    // print(cityName);
                    Navigator.pop(context, cityName);
                  },
                  child: Card(
                    key: ValueKey(_foundCity[index]["id"]),
                    color: Colors.lightBlue[400],
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      // leading: Text(
                      //   _foundCity[index]["id"].toString(),
                      //   style: const TextStyle(fontSize: 24),
                      // ),
                      title: Text(
                        _foundCity[index]['name'],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
                  :
              // TextButton(
              //   child: Text(
              //     'Get Weather',
              //     style: TextStyle(fontSize: 30.0),
              //   ),
              //   onPressed: () {
              //     Navigator.pop(context, cityName);
              //     print(cityName);
              //   },
              // ),

              const Text(
                "The database does not contain the requested city. But you can enter the whole city name and press Enter ;)",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// 1111111111
//
// class CityScreen extends StatefulWidget {
//   @override
//   _CityScreenState createState() => _CityScreenState();
// }
//
//
// class _CityScreenState extends State<CityScreen> {
//   late String cityName;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: SafeArea(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: TextField(
//                     cursorColor: Colors.blueGrey[800],
//                     style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(
//                       hintText: 'Enter City Name',
//                       hintStyle: TextStyle(color: Colors.white),
//                       filled: true,
//                       fillColor: Colors.black87,
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10.0),
//                           ),
//                           borderSide: BorderSide.none),
//                       icon: Icon(
//                         Icons.location_city,
//                         color: Colors.black87,
//                         size: 50.0,
//                       ),
//                     ),
//                     onChanged: (value) {
//                       cityName = value;
//                     },
//                   ),
//                 ),
//               ),
//
//               TextButton(
//                 child: Text(
//                   'Get Weather',
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context, cityName);
//                   print(cityName);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }