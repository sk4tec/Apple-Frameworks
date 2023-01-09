import SwiftUI

struct FrameworkGridView: View {

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible())]

    var body: some View {
        LazyVGrid(columns: columns) {

            ForEach(MockData.frameworks, id: \.self) { framework in
                //FrameworkTitleView(name: "App Clips", imageName: "app-clip")
                Text("Name: \(framework.name)")
                Text("Image: \(framework.imageName)")
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
