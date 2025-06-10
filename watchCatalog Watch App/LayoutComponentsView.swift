import SwiftUI
import WatchKit

struct LayoutComponentsView: View {
    var body: some View {
        List {
            NavigationLink("HStack Demo", destination: HStackDemoView())
            NavigationLink("VStack Demo", destination: VStackDemoView())
            NavigationLink("ZStack Demo", destination: ZStackDemoView())
            NavigationLink("Grid Demo", destination: GridDemoView())
            NavigationLink("ScrollView Demo", destination: ScrollViewDemoView())
        }
        .navigationTitle("Layout")
    }
}
