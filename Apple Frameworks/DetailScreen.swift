import SwiftUI

struct DetailScreen: View {
    var framework: Framework
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {

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
    static var previews: some View {
        DetailScreen(framework: MockData.sampleFramework)
    }
}
