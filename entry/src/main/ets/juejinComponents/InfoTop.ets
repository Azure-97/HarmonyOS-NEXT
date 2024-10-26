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
export struct InfoTop {
  @State isOn: boolean = true
  build() {
    Row() {
      Text('全部评论').fontColor(Color.White).fontSize(20)

      Row() {
        //stateEffect:false  去除按钮默认点击效果
        Button('最新',{stateEffect:false})
          .fancyButton(this.isOn)
          .onClick(()=>{
            this.isOn = !this.isOn
          })
        Button('最热',{stateEffect:false})
          .fancyButton(!this.isOn)
          .onClick(()=>{
            this.isOn = !this.isOn
          })
      }
      .borderRadius(15)
      .backgroundColor('#f7f8fa')

    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .backgroundColor('#ffefefef')
    .height(60)
    .padding(10)
  }
}


