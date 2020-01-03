class React {
  num height;
  num width;

  React(this.height, this.width);
  num area() {
    return this.height * this.width;
  }

  // getter 修饰词用法
  get areaGetter {
    return this.height * this.width;
  }

  // setter 修饰词用法
  set areaHeight(value) {
    this.height = value;
  }
}

void main() {
  React r = new React(10, 4);
  print("面积是：${r.area()}");
  // 注意，调用getter 直接通过访问属性的方式访问即可
  print("面积是：${r.areaGetter}");
  r.areaHeight = 9; // setter为属性，写法像函数***
  print("面积是：${r.area()}");
}
