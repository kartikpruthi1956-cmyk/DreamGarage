import SwiftUI

struct NotificationItem: Identifiable {

    let id = UUID()
    let title: String
    let message: String
    let time: String
}

struct NotificationView: View {

    let notifications = [

        NotificationItem(
            title: "Test Drive Confirmed 🚗",
            message: "Your test drive for BMW M4 has been confirmed.",
            time: "2 min ago"
        ),

        NotificationItem(
            title: "EMI Approved 💰",
            message: "Your EMI request has been approved.",
            time: "1 hour ago"
        ),

        NotificationItem(
            title: "New Car Added 🔥",
            message: "Mahindra Scorpio N is now available.",
            time: "Yesterday"
        )
    ]

    var body: some View {

        ZStack {

            Color.black
                .ignoresSafeArea()

            ScrollView {

                VStack(spacing: 20) {

                    Text("Notifications")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)

                    ForEach(notifications) { notification in

                        VStack(alignment: .leading, spacing: 10) {

                            Text(notification.title)
                                .font(.headline)
                                .foregroundColor(.white)

                            Text(notification.message)
                                .foregroundColor(.gray)

                            Text(notification.time)
                                .font(.caption)
                                .foregroundColor(.yellow)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.white.opacity(0.08))
                        .cornerRadius(20)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {

    NotificationView()
}
