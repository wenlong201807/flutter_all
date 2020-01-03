void main() {
  var person = {
    "name": 'zhu',
    "age": 22,
    "work": ['sadf', "asd"]
  };

  print(person);
  print(person["name"]);
  print(person["age"]);
  // print(person["work"][1]); // 报错
  print(person["work"]);

  var p = new Map();
  p["aa"] = "asdfasdf";
  print(p);
}
