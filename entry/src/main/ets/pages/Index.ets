import { router } from '@kit.ArkUI';  //也是引用了import  router  from '@ohos.router';
import { common, Want } from '@kit.AbilityKit';

// 从一个Ability中唤起另一个Ability（同模块）
// 1. 准备 want 作为 UIAbility 的启动參数
// 2. 利用上下文对象 context，调用 startAbility 传入 want 启动


@Entry
@Component
struct Index {
  @State show: boolean = true
  // 获取上下文对象
  context = getContext(this) as common.UIAbilityContext

  build() {
    Column() {
      Text('当前是聊天Ability').fontSize(30)
      Button('唤起同一个模块另一个Ability--TwoAbility')
        .onClick(()=>{
          // 1.准备 want 作为 UIAbility 的启动參数
          let want :Want={
            deviceId: '', //  空表示本设备
            //com.example.myapplication 来自 AppScope/app.json5 里的bundleName
            bundleName: 'com.example.myapplication',
            // 本模块名
            moduleName: 'entry',
            //来自 src/main/module.json5 要启动的Ability
            abilityName: 'TwoAbility'
          }
          this.context.startAbility(want)
            .then(()=>{
                console.log('startAbility success')
            }).catch(()=>{
              console.log('startAbility failed')
          })

        })


      Button('唤起另一个模块的Ability--TwoAbility')
        .onClick(()=>{
          // 1.准备 want 作为 UIAbility 的启动參数
          let want :Want={
            deviceId: '', //  空表示本设备
            //com.example.myapplication 来自 AppScope/app.json5 里的bundleName
            bundleName: 'com.example.myapplication',
            // 另一个模块名
            moduleName: 'TestApplication',
            //另一个模块的abilityName
            abilityName: 'TestApplicationAbility'
          }
          this.context.startAbility(want)
            .then(()=>{
              console.log('startAbility success')
            }).catch(()=>{
            console.log('startAbility failed')
          })

        })
    }
  }
}
