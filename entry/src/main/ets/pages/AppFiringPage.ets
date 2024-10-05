import { router } from '@kit.ArkUI';

@Entry
@Component
struct AppFiringPage {
  @State message: string = '这是一个开屏广告';

  aboutToAppear(): void {
    setTimeout(() => {
      router.replaceUrl({
        url: "pages/Index"
      })
    }, 3000)
  }

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('AppFiringPageHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
    .onClick(() => {
      console.log("click")
      router.replaceUrl({
        url: "pages/Index"
      })
    })
  }
}