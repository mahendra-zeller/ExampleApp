import UIKit
import Social
import React

class ShareViewController: UIViewController {


  override func viewDidLoad() {
    super.viewDidLoad()


    let bundleUrl = self.getBundleURL()
    print("Bundle URL: \(bundleUrl)")

   let rootView = RCTRootView(
     bundleURL: bundleUrl,
     moduleName: "IssuerUIExtension",
     initialProperties: nil,
     launchOptions: nil
   )
//    
//    let module = rootView.bridge.module(forName: "WUINativeModule") as? WUINativeModule

    
    // Initialize the Fabric surface
    // let surface = RCTFabricSurface(
    //     moduleName: "IssuerUIExtension",
    //     initialProperties: [:]
    // )

    // Create a hosting view for the Fabric surface
    // let rootView = RCTSurfaceHostingProxyRootView(surface: surface)

    // Start the surface (loads the JS bundle)
    // surface.start(withBundleURL: bundleUrl, launchOptions: nil)

//
    print("Class exists:", NSClassFromString("ExtensionContextProviderImpl") as Any)
    
    
    
    DispatchQueue.main.async { [weak self] in
      guard let self = self, let ctx = self.extensionContext else { return }
      let provider = ExtensionContextProviderImpl.shared()
      provider?.setExtensionContext(ctx)
      print("✅ Extension context stored successfully: \(ctx)")
    }


    self.view.addSubview(rootView)
    rootView.frame = self.view.bounds
  }

  override func viewDidDisappear(_ animated: Bool) {
      super.viewDidDisappear(animated)
  }
  
  func getBundleURL() -> URL {
      #if DEBUG
        RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index.IssuerUIExtension")!
      #else
        Bundle.main.url(forResource: "main", withExtension: "jsbundle")!
      #endif
    }
}

