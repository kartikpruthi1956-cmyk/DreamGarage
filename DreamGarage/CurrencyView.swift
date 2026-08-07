import SwiftUI

struct CurrencyView: View {

    @AppStorage("selectedCurrency")
    private var selectedCurrency = "INR"

    let currencies = [

        ("INR", "₹ Indian Rupee"),
        ("USD", "$ US Dollar"),
        ("EUR", "€ Euro"),
        ("GBP", "£ British Pound")
    ]

    var body: some View {

        ZStack {

            Color.black
                .ignoresSafeArea()

            VStack(spacing: 20) {

                Text("Select Currency")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                ForEach(currencies, id: \.0) { currency in

                    Button {
                        selectedCurrency = currency.0
                        print("Saved Currency:", selectedCurrency)
                    } label: {

                        HStack {

                            Text(currency.1)
                                .foregroundColor(.white)

                            Spacer()

                            if selectedCurrency == currency.0 {

                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                        .padding()
                        .background(
                            Color.white.opacity(0.08)
                        )
                        .cornerRadius(18)
                    }
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {

    CurrencyView()
}

