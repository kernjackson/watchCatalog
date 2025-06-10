import SwiftUI
import WatchKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Text & Labels", destination: TextComponentsView())
                NavigationLink("Buttons", destination: ButtonComponentsView())
                NavigationLink("Input Controls", destination: InputComponentsView())
                NavigationLink("Lists & Pickers", destination: ListComponentsView())
                NavigationLink("Progress & Activity", destination: ProgressComponentsView())
                NavigationLink("Layout", destination: LayoutComponentsView())
                NavigationLink("Images & Media", destination: MediaComponentsView())
                NavigationLink("Navigation", destination: NavigationComponentsView())
            }
            .navigationTitle("Components")
        }
    }
}

#Preview {
    ContentView()
}
