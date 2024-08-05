import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Image("profile_picture")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Liju")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Mobile developer @ Accenture")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        
                        Text("Riga, Latvia")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.leading, 16)
                }
                
                Text("About")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Passionate Mobile developer with 8+ years of experience in building high-quality mobile applications. Skilled in Swift, SwiftUI, and Combine. Always eager to learn new technologies and improve coding skills.")
                    .font(.body)
                    .foregroundColor(.primary)
                
                Text("Experience")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading, spacing: 8) {
                    ExperienceView(
                        company: "Accenture Baltics",
                        position: "Application Developement senior analyst",
                        duration: "Jan 2022- Present",
                        description: "Developed and maintained several high-profile applications using Android,Swift and SwiftUI."
                    )
                    ExperienceView(
                        company: "Innovation Incubator Advisory",
                        position: "Senior Software Engineer",
                        duration: "Jun 2019 - Dec 2021",
                        description: "Assisted in the development of mobile applications and collaborated with cross-functional teams."
                    )
                }
            }
            .padding()
            .navigationTitle("Profile")
        }
    }
}

struct ExperienceView: View {
    var company: String
    var position: String
    var duration: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(company)
                .font(.headline)
            
            Text(position)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text(duration)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text(description)
                .font(.body)
                .lineLimit(nil)
                .foregroundColor(.primary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ContentView()
}
