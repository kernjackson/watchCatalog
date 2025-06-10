import SwiftUI
import WatchKit

struct TabDemoView: View {
    var body: some View {
        TabView {
            VStack {
                Image(systemName: "heart.fill")
                    .font(.title)
                    .foregroundColor(.red)
                Text("Health")
            }
            .tabItem {
                Image(systemName: "heart")
                Text("Health")
            }
            
            VStack {
                Image(systemName: "figure.walk")
                    .font(.title)
                    .foregroundColor(.green)
                Text("Activity")
            }
            .tabItem {
                Image(systemName: "figure.walk")
                Text("Activity")
            }
            
            VStack {
                Image(systemName: "gear")
                    .font(.title)
                    .foregroundColor(.blue)
                Text("Settings")
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
        .navigationTitle("Tabs")
    }
}
