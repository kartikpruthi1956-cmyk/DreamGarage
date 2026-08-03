import SwiftUI

struct SearchBar: View {

    @Binding var searchText: String

    var body: some View {

        HStack(spacing: 12) {

            Image(systemName: "magnifyingglass")
                .font(.title3)
                .foregroundColor(.gray)

            TextField("Search your dream car...", text: $searchText)
                .foregroundColor(.white)
                .tint(.yellow)

        }
        .padding()
        .frame(width:350,height: 50)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.white.opacity(0.08))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.white.opacity(0.1), lineWidth: 1)
        )

    }

}

#Preview {

    ZStack {

        Color.black
            .ignoresSafeArea()

        SearchBar(searchText: .constant("Ferrari"))
            .padding()

    }

}
