
import SwiftUI

struct BookTestDriveView: View {

    let car: Car

    @State private var selectedOption = "Test Drive"

    let options = [
        "Test Drive",
        "EMI",
        "Full Payment"
    ]
    @State private var downPayment = ""

    @State private var selectedYear = 5
    let loanYears = [1, 2, 3, 4, 5]
    var emi: Double {

        let cleanPrice = car.price
            .replacingOccurrences(of: "$", with: "")
            .replacingOccurrences(of: ",", with: "")

        let carPrice = Double(cleanPrice) ?? 0

        let principal = carPrice - (Double(downPayment) ?? 0)

        let annualRate = 9.0 / 100
        let monthlyRate = annualRate / 12

        let months = Double(selectedYear * 12)

        if principal <= 0 || months <= 0 {
            return 0
        }

        let emiValue = principal * monthlyRate *
            pow(1 + monthlyRate, months) /
            (pow(1 + monthlyRate, months) - 1)

        return emiValue
    }

    var body: some View {

        NavigationStack {

            VStack(spacing: 20) {

                Text(car.name)
                    .font(.largeTitle.bold())

                Picker(
                    "Select Option",
                    selection: $selectedOption
                ) {

                    ForEach(options, id: \.self) { option in

                        Text(option)
                    }
                }
                .pickerStyle(.segmented)

                if selectedOption == "EMI" {

                    TextField(
                        "Down Payment",
                        text: $downPayment
                    )
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)

                    Picker("Loan Period", selection: $selectedYear) {

                        ForEach(loanYears, id: \.self) { year in

                            Text("\(year) Years")
                        }
                    }
                    .pickerStyle(.menu)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)

                    Text("Monthly EMI")

                    Text("₹ \(Int(emi)) / month")
                        .font(.title2.bold())
                        .foregroundColor(.yellow)
                }
                if selectedOption == "Full Payment" {

                    Text("Total Price: \(car.price)")
                }

                if selectedOption == "Test Drive" {

                    Text("Booking Fee: ₹999")
                }

                Spacer()

                Button {

                } label: {

                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(15)
                }
            }
            .padding()
        }
    }
}
