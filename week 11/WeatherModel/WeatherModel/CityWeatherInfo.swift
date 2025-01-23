import SwiftUI

struct CityWeatherInfo: View {
    @State private var status = false
    var cityWeather: CityWeather
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: status ? [.black, .white] :[.blue, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text(cityWeather.city)
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 70)

                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .foregroundStyle(.white, .yellow)
                    .frame(width: 180, height: 160)
                    .padding(.top, 15)

                Text("30°C")
                    .font(.system(size: 65, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 10)

                VStack(spacing: 20) {
                    ForEach(cityWeather.weather) { item in
                        HStack {
                            Text(item.day)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text(item.temperature)
                                .font(.system(size: 20))
                                .foregroundColor(.white)

                            Image(systemName: item.icon)
                                .resizable()
                                .foregroundStyle(.blue, .yellow)
                                .frame(width: 45, height: 45)
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.2)))
                    }
                }
                .padding(.top, 20)

                Spacer()

                Button(action: {
                    status.toggle()
                }) {
                    Text("Change Day Time")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 40)
            }
        }
    }
}
