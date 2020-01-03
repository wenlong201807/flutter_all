class React {
  num height;
  num width;
// 使用个比较少
  React():height=3,width=7{
    // 实例化的时候，不传入参数，内部自定义默认参数值，在实例化的时候赋值
    print("实例化之前，赋值默认值");
  }
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
  React r = new React();
  print("面积是：${r.area()}");
  // 注意，调用getter 直接通过访问属性的方式访问即可
  print("面积是：${r.areaGetter}");
 
}
