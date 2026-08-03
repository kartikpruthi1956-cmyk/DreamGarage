
import SwiftUI

struct CategoryChip: View {

    let title: String
    let isSelected: Bool

    var body: some View {

        Text(title)
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(isSelected ? .black : .white)
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(isSelected ? Color.yellow : Color(.white).opacity(0.08))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.yellow, lineWidth: isSelected ? 0 : 1)
            )

    }
}

#Preview {

    ZStack {

        Color.black
            .ignoresSafeArea()

        ScrollView(.horizontal) {

            HStack(spacing: 15) {

                CategoryChip(title: "Sports", isSelected: true)

                CategoryChip(title: "Luxury", isSelected: false)

                CategoryChip(title: "SUV", isSelected: false)

                CategoryChip(title: "Electric", isSelected: false)

                CategoryChip(title: "Classic", isSelected: false)

            }
            .padding()

        }

    }

}
