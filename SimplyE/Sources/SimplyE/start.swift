import Foundation
import ScadeKit

class SimplyE: SCDApplication {

	var window = SCDLatticeWindow()
  var mainAdapter: MainPageAdapter!
  var loginPage : LoginPageAdapter!
  var bookDetail: BookDetailPageAdapter!
  var searchPage: SearchPageAdapter!
  //var settings : SettingsPageAdapter!
  
	override func onFinishLaunching() {

		mainAdapter = MainPageAdapter()
		
		loginPage = LoginPageAdapter()
		loginPage.load("Login.page")
		
		readerSettings = ReaderSettingsPageAdapter()
		readerSettings.load("ReaderSettings.page")
		
		searchPage = SearchPageAdapter()
		searchPage.load("search.page")
		
		
		mainAdapter.load("main.page")
		
		loginPage.show(view: window)
	}
}
