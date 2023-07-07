import Foundation
import ScadeKit

class AboutPageAdapter: SCDLatticePageAdapter {

  let aboutWebView: String = "https://docs.scade.io/docs/how-scade-works"

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    self.doneButton.onClick { _ in
      Navigation.go(.settings, clearHistory: true)
    }

    self.reloadButton.onClick { _ in
      self.webView.load(self.aboutWebView)
    }

  }

  override func show(view: SCDLatticeView?, data: Any) {
    super.show(view: view, data: data)

    guard let url = URL(string: self.aboutWebView) else { return }

    guard let domain = url.host else { return }

    self.titleLabel.text = domain

    webView.load(self.aboutWebView)

    webView.onLoaded.append(
      SCDWidgetsLoadEventHandler { event in
        print("OnLoaded: \(String(describing: event?.url))")
      }
    )
    webView.onLoadFailed.append(
      SCDWidgetsLoadFailedEventHandler { event in
        print("NonLoaded: \(String(describing: event?.url))")
        print("NonLoaded: \(String(describing: event?.message))")
      }
    )

  }

}