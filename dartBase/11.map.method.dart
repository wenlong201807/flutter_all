void main() {
  Map person = {"name": "张三", "age": 20, "sex": "男"};
  print(person.keys.toList());
  print(person.values.toList());
  print(person.isEmpty);
  print(person.isNotEmpty);

  person.addAll({
    "work": ["aa", "bb"],
    "height": 222
  });
  print(person);
  person.remove("height");
  person.containsKey("height");
  person.containsKey("work");
  print(person);
}
