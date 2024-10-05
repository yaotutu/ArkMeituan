export class TabbarItem {
  index: number = 0;
  title: string = '';
  icon_selected: Resource = $r('app.media.ic_default')
  icon_normal: Resource = $r('app.media.ic_default')
}

export const tabbarItemList: TabbarItem[] = [
  {
    index: 0,
    title: "首页",
    icon_selected: $r("app.media.ic_recommend"),
    icon_normal: $r("app.media.ic_recommend"),
  },
  {
    index: 1,
    title: "优选",
    icon_selected: $r("app.media.ic_youxuan"),
    icon_normal: $r("app.media.ic_youxuan"),
  },
  {
    index: 2,
    title: "视频",
    icon_selected: $r("app.media.ic_video"),
    icon_normal: $r("app.media.ic_video"),
  },
  {
    index: 3,
    title: "消息",
    icon_selected: $r("app.media.ic_message"),
    icon_normal: $r("app.media.ic_message"),
  },
  {
    index: 3,
    title: "我的",
    icon_selected: $r("app.media.ic_my"),
    icon_normal: $r("app.media.ic_my"),
  }
]