import { router } from '@kit.ArkUI';  //也是引用了import  router  from '@ohos.router';


@Entry
@Component
struct Login {
  @State message: string = 'Login';
  @State username: string = '';

  build() {
    Column() {
      Text(this.message).fontSize(60)
      TextInput({
        text: $$this.username,
        placeholder: 'username'
      })
      Button('Login')
        .onClick(()=>{
          //返回键可以返回
          router.pushUrl({
            url: 'pages/Index',
            params: {
              username: this.username
            }
          })
          //返回键不可以返回
          // router.replaceUrl({
          //   url: 'pages/Index'
          // })
        })
    }
    .height('100%')
    .width('100%')
  }
}