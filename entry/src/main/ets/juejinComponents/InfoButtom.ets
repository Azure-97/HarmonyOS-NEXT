@Extend(Button)
function fancyButton(isON: boolean) {
  .width(60)
  .height(40)
  .fontSize(12)
  .padding(10)
  .backgroundColor(isON ? '#fff' : '#f7f8fa')
  .fontColor(isON ? '#2f2e33' : '#8e9298')
  .border({width: 1, color: isON ? '#fff' : '#f7f8fa'})
}


@Component
export struct InfoButtom {
  @State isOn: boolean = true
  build() {
    Row() {
      Row() {
        Text('\ue621')
          .fontFamily('myfont')
          .margin({left: 10})
          .fontSize(20)
        TextInput({placeholder: '请输入内容'})
          .backgroundColor(Color.Transparent)
      }
      .borderRadius(20)
      .backgroundColor('#fff')
      .layoutWeight(1)
      .height(40)
      .margin({ left: 15, right: 20, top: 10, bottom: 10})
      Text('\ue651')
        .fontFamily('myfont')
        .fontSize(20)
      Text('\ue600')
        .fontFamily('myfont')
        .fontSize(20)
        .margin({right: 10,left: 10})
    }
    .width('100%')
    .backgroundColor('#ffefefef')
    .height(60)
    .padding(10)
  }
}


