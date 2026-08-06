import SwiftUI

struct PrivacyView: View {

    @State private var faceID = false

    var body: some View {

        VStack(spacing: 20) {

            Toggle("Enable Face ID", isOn: $faceID)

            Button("Clear Search History") {

            }

            Button("Delete Account") {

            }
            .foregroundColor(.red)

            Spacer()
        }
        .padding()
        .navigationTitle("Privacy")
    }
}
