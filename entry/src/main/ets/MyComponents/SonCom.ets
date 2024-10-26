@Component
export struct SonCom {
  // 1。定义结构函数
  @BuilderParam ContentBulider: () => void = this.defaultBuilder

  @Builder
  defaultBuilder() {
    Text('默认内容')
  }

  build() {
    Column() {
      // 2.使用构建函数，构建结构
      this.ContentBulider()
    }
    .width('100%')

    .height(200)
  }
}


