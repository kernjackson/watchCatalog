import SwiftUI
import WatchKit

struct TextComponentsView: View {
    var body: some View {
        List {
            Section("Text Styles") {
                Text("Large Title")
                    .font(.largeTitle)
                
                Text("Title")
                    .font(.title)
                
                Text("Title 2")
                    .font(.title2)
                
                Text("Title 3")
                    .font(.title3)
                
                Text("Headline")
                    .font(.headline)
                
                Text("Body")
                    .font(.body)
                
                Text("Callout")
                    .font(.callout)
                
                Text("Subheadline")
                    .font(.subheadline)
                
                Text("Footnote")
                    .font(.footnote)
                
                Text("Caption")
                    .font(.caption)
                
                Text("Caption 2")
                    .font(.caption2)
            }
            
            Section("Text Modifiers") {
                Text("Bold Text")
                    .bold()
                
                Text("Italic Text")
                    .italic()
                
                Text("Underlined Text")
                    .underline()
                
                Text("Strikethrough Text")
                    .strikethrough()
                
                Text("Colored Text")
                    .foregroundColor(.blue)
                
                Text("Multiline Text\nThis spans multiple lines\nOn Apple Watch")
                    .multilineTextAlignment(.center)
            }
            
            Section("Labels") {
                Label("Heart Rate", systemImage: "heart.fill")
                Label("Steps", systemImage: "figure.walk")
                Label("Battery", systemImage: "battery.100")
            }
        }
        .navigationTitle("Text")
    }
}
