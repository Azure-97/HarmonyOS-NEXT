import { CommentData } from "../model/CommentData"

@Component
export struct InfoItem {
  @State isOn: boolean = true
  @Prop item: CommentData
  onLikeClick=()=> {}

  build() {
    Column() {
      Row(){
        Image ($r(this.item.avatar))// 头像
          .width (30) .aspectRatio(1)
          .margin({ top: 10 })
          .borderRadius(15)
        Text(this.item.name)// 昵称
          .fontSize(13)
          .fontColor(Color.Gray)
          .margin({ top: 10, left: 8 })
        Image (this.item.levelIcon) // 等级
          .width (20) .aspectRatio(1)
          .margin({ top: 10, left: 8})
          .borderRadius(15)
      }
      .width('100%')

      Text(this.item.commentText).width('100%')

      Row() {
        Text(this.item.timeString)
          .fontSize(13)
          .fontColor(Color.Gray)
          .margin({ top: 10, left: 8 })
        Blank()
        Row(){
          Text(this.item.likeNum.toString()) // 点赞数
            .fontSize(13)
            .fontColor(Color.Gray)
            .margin({ top: 10, left: 8 })
          Image ($r('app.media.zan')) // 点赞
            .width (20) .aspectRatio(1)
            .margin({ top: 10, left: 8})
            .borderRadius(15)
        }
        .onClick(()=>{
          this.onLikeClick
        })

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .backgroundColor('#ffb3b3b3')
    .height(120)
    .padding(10)
  }
}




