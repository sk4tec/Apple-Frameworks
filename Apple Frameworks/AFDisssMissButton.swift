import SwiftUI

struct AFDisssMissButton: View {
    @State var isShowingSafari: Bool = false
    var body: some View {
        Button {
            isShowingSafari = true
        } label: {
            AFButton(title: "Learn More")
        }
    }
}

struct AFDisssMissButton_Previews: PreviewProvider {
    static var previews: some View {
        AFDisssMissButton(isShowingSafari: false)
    }
}
