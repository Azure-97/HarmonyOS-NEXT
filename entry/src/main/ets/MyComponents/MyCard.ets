@Component
export struct MyCard {
  // 1。定义结构函数
  @BuilderParam tBulider1: () => void = this.defaultBuilder1
  @BuilderParam cBulider2: () => void = this.defaultBuilder2

  @Builder
  defaultBuilder1() {
    Text('默认内容1')
  }
  @Builder
  defaultBuilder2() {
    Text('默认内容2')
  }

  build() {
    Column() {
      // 2.使用构建函数，构建结构
      Row(){
        this.tBulider1()
      }
      Row(){
        this.cBulider2()
      }

    }

  }
}


