import axios, { AxiosResponse } from '@ohos/axios'

@Component
export struct Takeway {
  url = "yyq.cn/api/getPlayData?playid=4926%2C4925%2C4924%2C4923%2C4922%2C4921%2C4920%2C4919%2C4918%2C4917%2C4916%2C4915&typeid=3"
  async  getUser(){
    const resp: AxiosResponse = await axios.get(this.url)
    console.log("axios resp",JSON.stringify(resp))
  }
  build() {
    Column() {
      Text("外卖专区/30分钟极速达")
        .fontSize(20)
        .width("100%")
        .padding(10)
      Button("click")
        .onClick(()=>{
          this.getUser()
        })

    }
    .width("100%")
    .height(390)
  }
}