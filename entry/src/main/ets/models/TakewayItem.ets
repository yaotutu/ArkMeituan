export class TakewayItem {
  itemName: string = ""
  itemImage: ResourceStr = ""
  itemUrl?: string
}

export const takewayList: TakewayItem[] = [
  {
    itemName: "外卖",
    itemImage: $r("app.media.ic_default")
  },
  {
    itemName: "蔬菜水果",
    itemImage: $r("app.media.ic_default")
  },
  {
    itemName: "超市",
    itemImage: $r("app.media.ic_default")
  }
]