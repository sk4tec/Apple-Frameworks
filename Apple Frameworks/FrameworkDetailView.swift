import SwiftUI

struct FrameWorkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool

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

            Button {

            } label: {
                AFButton(title: "Learn More")
            }

        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    @Binding var val: Bool
    static var previews: some View {
        FrameWorkDetailView(framework: MockData.sampleFramework,
                            isShowingDetailView: .constant(false))
    }
}
