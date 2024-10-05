@Component
export struct SearchComponent {
  @State swiperContent: string[] = ["肯德基", "麦当劳", "达美乐"]

  build() {
    Column() {
      Row() {
        Image($r("app.media.location"))
          .width(18)
          .aspectRatio(1)
        Text("北京市中关村").fontSize(18)

      }
      .width("100%")
      .padding({
        top: 10,
        left: 15
      })

      Row() {
        Stack({
          alignContent:Alignment.End
        }){
          Swiper() {
            ForEach(this.swiperContent, (item: string) => {
              TextInput({
                placeholder: item
              })

                .width("85%")
                .backgroundColor("#FFFFFF")
                .height(40)

            })
          }
          .autoPlay(true)
          .loop(true)
          .indicator(false)
          .interval(5000)
          Button('搜索')
            .fontColor("#363636")
            .backgroundColor("#FAE35A")
            .width(80)
            .height(30)
            .margin({
              right:5
            })
        }

      }
      .width("100%")
      .padding({
        top: 10,
        left: 15,
        right: 15
      })
    }
    .width("100%")
    .height(95)
    .backgroundColor("#FAE35A")
  }
}