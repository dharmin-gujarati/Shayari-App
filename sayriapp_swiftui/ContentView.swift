
import SwiftUI

struct ContentView: View {
    let array = [
        "Love",
        "Sad",
        "Romantic",
        "Friendship",
        "Attitude",
        "Motivational",
        "Life",
        "Funny",
        "Breakup",
        "Miss You",
        "Good Morning",
        "Good Night",
        "Birthday",
        "Festival",
        "Inspirational"
    ]
    var body: some View {
        NavigationStack{
            Color.gray
                .overlay {
                    ScrollView(showsIndicators: false){
                        VStack{
                            ForEach (0 ..< array.count , id: \.self) { i in
                                NavigationLink(destination: SecondPage(index:i)) {
                                    Label("\(array[i])",systemImage: "")
                                        .frame(width: 400, height: 70)
                                        .background(Color.blue)
                                        .foregroundColor(.black)
                                        .cornerRadius(10)
                                        .font(.largeTitle)
                                }
                                .navigationBarTitle("shayari")
                                .navigationBarTitleDisplayMode(.large)
                            }
                        }
                    }
                    .padding(.top, 150)
                    
                }
                .ignoresSafeArea()
            
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    ContentView()
}
