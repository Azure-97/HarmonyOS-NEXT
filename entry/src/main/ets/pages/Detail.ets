import { router } from '@kit.ArkUI';

@Entry
@Component
struct Detail {
  @State message: string = 'Detail';

  aboutToAppear(): void {
    console.log('Detail---- aboutToAppear')
  }
  aboutToDisappear(): void {
    console.log('Detail---- aboutToDisappear')
  }
  onPageShow(): void {
    console.log('Detail---- onPageShow');
  }
  onPageHide(): void {
    console.log('Detail---- onPageHide');
  }
  onBackPress(): boolean | void {
    console.log('Detail---- onBackPress');
    router.back()
    return true;

  }
  build() {
    RelativeContainer() {
      Text(this.message).fontSize(60)
    }
    .height('100%')
    .width('100%')
  }
}