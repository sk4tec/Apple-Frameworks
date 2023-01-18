import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            guard let framework = selectedFramework else { return }
            print("you selected \(framework.name)")
        }
    }
}
