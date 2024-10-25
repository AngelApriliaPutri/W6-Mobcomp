import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Bagian Atas
            VStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                            .fill(Color.black)
                            .frame(height: 160)
                            .frame(maxWidth: 380)
                            .edgesIgnoringSafeArea(.top)
                            .padding(.top, -100)
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 120, height: 120)
                        .overlay(Text("🍟")
                            .font(.system(size: 100)))
                        .padding(.top, 50)
                }
                
                Text("@Angelzyen")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top)

                Text("Angel Aprilia Putri Lo")
                    .font(.title)
                    .bold()

                HStack {
                    Text("Surabaya")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .padding(.top, 10)
                    
                    Text("|")
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                    
                    Text("Joined August 2022")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                }
                .padding(.bottom, 15)

                HStack(spacing: 20) {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "person.fill.badge.plus")
                            Text("Follow")
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                    }

                    Button(action: {}) {
                        HStack {
                            Image(systemName: "message.fill")
                            Text("Message")
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                    }

                    Button(action: {}) {
                        HStack {
                            Image(systemName: "ellipsis")
                            Text("More")
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                    }

                }
                .padding(.bottom, 10)
                
                Text("Student at Ciputra University")
                    .font(.body)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top, 15)
            }
            .padding(.bottom, 5)
            
            Divider()
            
            VStack(spacing: 10) {
                Text("Information")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                HStack {
                    Text("Website")
                        .fontWeight(.bold)
                Spacer()
                    Text("www.Angel.com")
                }
                    .padding(.horizontal)

                HStack {
                    Text("Email")
                        .fontWeight(.bold)
                    Spacer()
                    Text("aaprilia01@student.ciputra.ac.id")
                }
                .padding(.horizontal)

                HStack {
                    Text("Phone")
                        .fontWeight(.bold)
                    Spacer()
                    Text("+62 852 492 737 68")
                }
                .padding(.horizontal)

                HStack {
                    Text("Joined")
                        .fontWeight(.bold)
                    Spacer()
                    Text("26 August, 2022")
                }
                .padding(.horizontal)
            }
            
            Divider()
                        
            HStack {
                TagView(tag: "UI Designer")
                TagView(tag: "UX Designer")
                TagView(tag: "Design System")
            }
            .padding(.bottom, 20)
            .padding(.leading, 16)
            .frame(maxWidth: .infinity, alignment: .leading)

            HStack {
                TagView(tag: "Product")
                TagView(tag: "Successful")
            }
            .padding(.top, -25)
            .padding(.leading, 16)
            .frame(maxWidth: .infinity, alignment: .leading)


            
        }
    }
}

struct InfoRow: View {
    var label: String
    var value: String
    
    var body: some View {
        HStack {
            Text(label)
                .bold()
            Spacer()
            Text(value)
                .foregroundColor(.gray)
        }
    }
}

struct TagView: View {
    var tag: String
    
    var body: some View {
        Text(tag)
            .font(.system(size: 14))
            .padding(.vertical, 8)
            .padding(.horizontal, 16) 
            .background(Color.gray.opacity(0.2))
            .cornerRadius(6)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
