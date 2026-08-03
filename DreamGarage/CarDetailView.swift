import SwiftUI

struct CarDetailView: View {

    let car: Car

    var body: some View {

        ScrollView(showsIndicators: false) {

            VStack{

//                Image(car.image)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height: 200)
//                    .frame(maxWidth: .infinity)
//                    .clipped()
                ZStack(alignment: .topTrailing) {

                    Image(car.image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 220)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .cornerRadius(30)

                    Button {

                    } label: {

                        Image(systemName: "heart")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(12)
                            .background(.black.opacity(0.5))
                            .clipShape(Circle())
                    }
                    .padding()
                }
                VStack(alignment: .leading, spacing: 20) {

                    HStack {

                        VStack(alignment: .leading) {

                            Text(car.name)
//                                .font(.largeTitle)
                                .font(.system(size: 34, weight: .bold))
                                .fontWeight(.bold)
                                .foregroundColor(.yellow)
                            Text(car.price)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.yellow)
                                .padding(.top, 2)

                        }

                        Spacer()

                        HStack {

                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)

                            Text(car.rating)
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                        }

                    }

                    Divider()

//                    HStack {
//
//                        VStack(alignment: .leading) {
//
//                            Text("Top Speed")
//                                .foregroundColor(.white)
//
//                            Text(car.topSpeed)
//                                .fontWeight(.bold)
//                                .foregroundColor(.gray)
//                        }
//
//                        Spacer()
//
//                        VStack(alignment: .leading) {
//
//                            Text("Horsepower")
//                                .foregroundColor(.white)
//
//                            Text(car.horsepower)
//                                .fontWeight(.bold)
//                                .foregroundColor(.gray)
//                        }
//
//                    }
                    HStack(spacing: 15) {

                        VStack(spacing: 10) {

                            Image(systemName: "speedometer")
                                .font(.title2)
                                .foregroundColor(.yellow)

                            Text(car.topSpeed)
                                .font(.headline)
                                .foregroundColor(.white)

                            Text("Top Speed")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white.opacity(0.08))
                        .cornerRadius(18)

                        VStack(spacing: 10) {

                            Image(systemName: "bolt.fill")
                                .font(.title2)
                                .foregroundColor(.yellow)

                            Text(car.horsepower)
                                .font(.headline)
                                .foregroundColor(.white)

                            Text("Horsepower")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white.opacity(0.08))
                        .cornerRadius(18)
                    }
                    Divider()

//                    VStack(alignment: .leading) {
//
//                        Text("Engine")
//                            .foregroundColor(.white)
//
//                        Text(car.engine)
//                            .fontWeight(.bold)
//                            .foregroundColor(.gray)
//                    }
                    VStack(alignment: .leading, spacing: 12) {

                        Label("Engine", systemImage: "gear")

                            .font(.headline)

                            .foregroundColor(.white)

                        Text(car.engine)

                            .foregroundColor(.gray)

                    }
                    .padding()

                    .background(Color.white.opacity(0.08))

                    .cornerRadius(18)
                    Divider()

                    VStack(alignment: .leading, spacing: 10) {

                        Text("Description")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text(car.description)
                            .foregroundColor(.gray)

                    }
                    .padding()
                    .background(Color.white.opacity(0.08))
                    .cornerRadius(18)

//                    Button {
//
//                    } label: {
//
//                        Text("Explore Now")
//                            .fontWeight(.bold)
//                            .foregroundColor(.black)
//                            .frame(maxWidth: .infinity)
//                            .frame(height: 55)
//                            .background(Color.yellow)
//                            .cornerRadius(15)
//
//                    }
                    Button {

                    } label: {

                        HStack {

                            Image(systemName: "car.fill")

                            Text("Book Test Drive")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 58)
                        .background(Color.yellow)
                        .cornerRadius(18)
                    }
                    .padding(.top, 15)
                }
                .padding()

            }

        }
        .background(Color.black)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.hidden, for: .navigationBar)
    }

}
#Preview{
   CarDetailView(car:cars[0])
}
