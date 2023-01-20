import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    @Published var isShowingDetailView = false
    public var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
}
