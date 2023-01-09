import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("arkit")
                    .resizable()
                    .frame(width: 90, height: 90)
                Text()
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
