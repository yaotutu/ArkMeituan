import { SearchComponent } from '../components/home/Search'
import { Takeway } from '../components/home/Takeway'

@Component
export struct Home {
  build() {
    Column() {
      Scroll() {
        Column() {
          SearchComponent()
          Takeway()
        }

      }
    }
    .height("100%")
    .width("100%")
  }
}