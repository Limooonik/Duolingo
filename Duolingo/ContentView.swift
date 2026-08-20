import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                Text("Add a widget")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("to home screen")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("- Only Apple technologies (everything in SwiftUI).")
                    Text("- No private APIs or third-party workarounds.")
                    Text("- No GIFs or videos.")
                    Text("- Works completely offline.")
                    Text("- Can do looped animation.")
                    Text("- Can set up reactions to events from the app or right on the widget.")
                    Text("- Doesn't drain the battery at all.")
                    Text("- Can change colors/size and other parameters for your widget.")
                }
                .font(.body)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("For any questions, comments, orders, or cooperation please contact:")
                        .font(.callout)
                        .foregroundColor(.secondary)
                    
                    Link("nicklimoapps@gmail.com", destination: URL(string: "mailto:nicklimoapps@gmail.com")!)
                        .font(.headline)
                }
                .padding(.top, 8)
            }
            .padding(24)
        }
    }
}

#Preview {
    ContentView()
}
