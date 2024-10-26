@Entry
@Component
struct EditPage {
  @State message: string = 'EditPage';

  build() {
    RelativeContainer() {
      Text(this.message).fontSize(60)
    }
    .height('100%')
    .width('100%')
  }
}