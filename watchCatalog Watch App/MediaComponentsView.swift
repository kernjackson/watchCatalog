import SwiftUI
import WatchKit

struct MediaComponentsView: View {
    var body: some View {
        List {
            Section("System Images") {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "flag.fill")
                        .foregroundColor(.blue)
                }
                
                HStack {
                    Image(systemName: "person.fill")
                        .imageScale(.small)
                    Image(systemName: "person.fill")
                        .imageScale(.medium)
                    Image(systemName: "person.fill")
                        .imageScale(.large)
                }
            }
            
            Section("Shapes") {
                HStack {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 30, height: 30)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 30, height: 30)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue)
                        .frame(width: 30, height: 30)
                }
                
                HStack {
                    Capsule()
                        .fill(Color.purple)
                        .frame(width: 60, height: 20)
                    
                    Ellipse()
                        .fill(Color.orange)
                        .frame(width: 40, height: 25)
                }
            }
            
            Section("Async Image") {
                AsyncImage(url: URL(string: "https://picsum.photos/100/100")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            }
        }
        .navigationTitle("Media")
    }
}
