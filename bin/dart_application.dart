import 'dart:async';

void main(List<String> arguments) {
  // num rating;
  // int x = 9;
  // double y = 9.0;
  /*
  String myName = 'shady'; //=> 'Shady'
  String country = 'palestine';
  // String name = 'hello&world, i am omar from palestine';
  // List<String> words = name.split(' ');
  // String newName = name.substring(5, 8);

  String name = 'mohammad';
  String firstLetter = name.substring(0, 1).toUpperCase();
  String lettersExceptFirst = name.substring(1);

  String fullName = firstLetter + lettersExceptFirst;
  print(fullName);
  */

  List<String> flutterStudentsNames = [
    'omar',
    'ali',
    'hussam',
    'aa'
  ]; // => [4,3,6]
  List<String> uxUiStudentsNames = ['alaa', 'jaber', 'fidaa'];
  List<String> gskStudents = [...flutterStudentsNames, ...uxUiStudentsNames];
  List<int> newFlutterStundetsNames = flutterStudentsNames.map((item) {
    return item.length;
  }).toList();

  flutterStudentsNames.addAll(uxUiStudentsNames);
  bool x = flutterStudentsNames.any((e) {
    return e.length == 1;
  });
  List<String> namesStartWithO = flutterStudentsNames.where((element) {
    return !element.startsWith('o');
  }).toList();

// set
  // Set<String> namesSet = {'omar', 'omar', 'ali'};
  // namesSet.an
  //map json syntax
  Map<String, dynamic> teacherInfo = {
    "name": "ahmed",
    "country": "Palestine",
    "company": "GSK",
    "age": 30,
    "isMale": true,
    "family": {
      'son': 'omar',
      'daughter': 'farah',
      'wife': 'soad',
      'father': 'ali'
    },
    'friends': ['shaker', 'jaber', 'zaid']
  };
  teacherInfo['speicification'] = 'IT';
  // print(teacherInfo);
  // defien new map that contains the following values,
  // palestine asn country
  // jerusalem as capital city
  // west bank and gaza as country parts,
  Map<String, dynamic> myCountry = {
    'name': 'palestine',
    'capital': 'jerusalem',
    'parts': ['gaza', 'west bank'],
    'area': 'asia'
  };

// convert each value in myCountry map to camel case =>Palestine,Jerusalem,
  String convertStringToCamelCase(String value) {
    String newValue = value[0].toUpperCase() + value.substring(1);
    return newValue;
  }

  List<String> convertStringListToCamelStringList(List<String> values) {
    List<String> newValues =
        values.map((e) => convertStringToCamelCase(e)).toList();
    return newValues;
  }

  Map<String, dynamic> newMyCountryMap = myCountry.map((key, value) {
    if (key == 'parts') {
      List<String> newValues = convertStringListToCamelStringList(value);
      return MapEntry(key, newValues);
    }
    return MapEntry(key, convertStringToCamelCase(value));
  });

  // print(newMyCountryMap);
  ///////////////////
  ///// positional parameters
  ///// optional parameters
  ///String, String?
  String getMyFullName(String fName,
      [String mName, String lName = 'undefined']) {
    return '$fName $mName $lName';
  }

  String fullName = getMyFullName('ahmed', 'mohammed', 'ali');
  print(fullName);
}

/*
define 3 functions 
1- the first function will receive string value and return camel case string value
2- the second function will recieve list of string and return list of camel case string
3- the third function will recieve any map and return new map which contains the same keys 
and camel case values

*/

