import SwiftUI

struct DetailScreen: View {
    var body: some View {
        VStack {
            FrameworkTitleView(framework: MockData.sampleFramework)
                .padding(.top, 100)

            Text("fjdsolfdjsklfjdkslfjdsklfjdkslsfjklsdfjkldsjklfsdjklfdsjkldfsjkld ferwujiopfewjiofewjio fewjiofewjiofewjio fewjiofewjiofewjio fewjiofewjiofewjoi  fjeiwowfjewiofjewj0wiof ewd \n\r re2koprf234ekopferwopkfkewopfewkopfewkopfewopkfewkopfewopkfewjkopfewkoperwf few fewopkfewopkfewopk ewfopkfewopkfewkopfew fewkopewfopkfewopk few fewkopfewkop fewk opfewkopfewopk ewfopkfewopkewfopk ewpklewokeok ejkmelelejke")
                .padding(.leading, 24)
                .padding(.trailing, 24)
            Spacer()
            Button("Learn More") {
                print("tapped learn more button")
            }
            .frame(width:280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(15)
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
