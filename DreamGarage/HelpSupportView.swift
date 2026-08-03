import SwiftUI

struct HelpSupportView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 25) {

                Text("Help & Support")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                VStack(alignment: .leading, spacing: 15) {

                    Label("Email: support@dreamgarage.com", systemImage: "envelope.fill")

                    Label("Phone: +91 9876543210", systemImage: "phone.fill")

                    Label("Working Hours: 9 AM - 6 PM", systemImage: "clock.fill")

                }
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white.opacity(0.06))
                .clipShape(RoundedRectangle(cornerRadius: 18))

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    HelpSupportView()
}

