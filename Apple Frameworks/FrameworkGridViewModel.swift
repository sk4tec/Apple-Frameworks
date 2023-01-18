import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    public var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }


    @Published var isShowingDetailView = false
}
