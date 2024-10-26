import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';

export default class EntryAbility extends UIAbility {
  //  创建Ability
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onCreate');
  }
  //  销毁Ability
  onDestroy(): void {
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onDestroy');
  }
  //  创建窗口
  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'itheimaTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'itheimaTag', 'Succeeded in loading the content.');
    });
  }
  // 销毁窗口
  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onWindowStageDestroy');
  }
 // 后台切换到界面 呈现出来了
  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onForeground');
  }
  // 切换到后台（比如回到桌面）
  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onBackground');
  }
}
