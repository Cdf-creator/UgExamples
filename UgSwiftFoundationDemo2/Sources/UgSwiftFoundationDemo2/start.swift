import ScadeKit

class UgSwiftFoundationDemo2: SCDApplication {

  let window = SCDLatticeWindow()
  let mainAdapter = MainPageAdapter()
  
  override func onFinishLaunching() {
    mainAdapter.load("main.page")
    mainAdapter.show(view: window)
  }
}