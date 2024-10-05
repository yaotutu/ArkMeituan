import { TabbarItem } from '../models/TabbarItem';
import { tabbarItemList } from "../models/TabbarItem"
import { promptAction } from '@kit.ArkUI';
import { Home } from './Home';

@Entry
@Component
struct MainPage {
  @Builder
  tabbarBuilder(item: TabbarItem) {
    Column() {
      Image(item.icon_normal)
        .width(32)
        .aspectRatio(1)
      Text(item.title)
        .fontSize(14)
        .fontWeight(500)
    }
  }

  @State message: string = 'Hello World';
  @State selectIndex: number = 0
  controller: TabsController = new TabsController()
  @State tabbarItemList: TabbarItem[] = tabbarItemList

  build() {
    Tabs({ barPosition: BarPosition.End, index: this.selectIndex, controller: this.controller }) {
      TabContent() {
        Home()
      }.tabBar(
        this.tabbarBuilder(this.tabbarItemList[0])
      )

      TabContent() {
        Text("优选")
      }.tabBar(
        this.tabbarBuilder(this.tabbarItemList[1])
      )

      TabContent() {
        Text("视频")
      }.tabBar(
        this.tabbarBuilder(this.tabbarItemList[2])
      )

      TabContent() {
        Text("消息")
      }.tabBar(
        this.tabbarBuilder(this.tabbarItemList[3])
      )

      TabContent() {
        Text("我的")
      }.tabBar(
        this.tabbarBuilder(this.tabbarItemList[4])
      )
    }
    .onChange((index)=>{
      this.selectIndex = index
      promptAction.showToast({
        message: `当前下标 切换至 ${index}`
      })
    })
  }
}