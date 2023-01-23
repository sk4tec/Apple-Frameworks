import SwiftUI

struct FrameWorkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafari: Bool = false

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .frame(width: 44, height: 44)
                        .imageScale(.large)
                }
            }
            .padding()

            Spacer()

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            AFDisssMissButton(isShowingSafari: isShowingSafari)

            .fullScreenCover(isPresented: $isShowingSafari) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://app.com")!)
            }
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    @Binding var val: Bool
    static var previews: some View {
        FrameWorkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
