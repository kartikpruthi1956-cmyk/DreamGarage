
import SwiftUI

struct LanguageView: View {

    @AppStorage("selectedLanguage") private var selectedLanguage = "English"

    let languages = ["English", "Hindi"]

    var body: some View {

        ZStack {

            Color.black
                .ignoresSafeArea()

            VStack(spacing: 20) {

                Text("Select Language")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                ForEach(languages, id: \.self) { language in

                    Button {

                        selectedLanguage = language

                    } label: {

                        HStack {

                            Text(language)
                                .foregroundColor(.white)

                            Spacer()

                            if selectedLanguage == language {

                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                        .padding()
                        .background(Color.white.opacity(0.08))
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

    LanguageView()
}
