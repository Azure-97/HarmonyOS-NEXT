//用于预览组件
@Preview
@Component
export struct MyComponent {
  @State  count: number = 0
  build() {
    Column() {
      Row(){
        Text("this is MyComponent and count="+ this.count)
        Button('按钮').onClick(()=>{
          this.count++
        }
        )
      }
      .backgroundColor( Color.Orange)
      .width(300)
      .height(30)
      .margin(20)
    }

  }
}
