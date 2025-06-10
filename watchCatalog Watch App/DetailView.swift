import SwiftUI
import WatchKit

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Detail View")
                .font(.title2)
            
            Text("This is a detail view accessed via NavigationLink")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Detail")
    }
}
