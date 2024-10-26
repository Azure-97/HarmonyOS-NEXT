//用于预览组件
@Preview
@Component
export struct MyPanel {
  // 可以使用@State 注解声明可动态更新的变量动态渲染
  title: string = '默认标题'//这是变量
  extra: string = '全部订单'//这是变量
  //这是变量  可以外部传入覆盖
  getMore= () => {
    AlertDialog.show({
      message: '点击了更多按钮'
    })
  }
  //成员函数不可以外部传入覆盖
  function1() {
    console.log('function1')
  }

  build() {
    Column() {
      Row() {
        Text(this.title)
        Text(this.extra).onClick(
          this.getMore
        )
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .padding(10)

      Row() {
        Text('内容部分')
      }
      .backgroundColor(Color.Orange)
      .width('100%')
      .height(200)
      .margin(20)
    }

  }
}
