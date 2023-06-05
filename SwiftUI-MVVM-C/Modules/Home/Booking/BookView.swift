

import SwiftUI

struct BookView: View {
    @StateObject var viewModel = BookViewModel()
    @StateObject var dateFormatterHelper = DateFormatterHelper()
    @State private var isAlertPresented = false
    
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedValue: FastisRange? = nil
    @State private var adultsValue = 0
    @State private var childrensValue = 0
    @State private var alertAction: AlertAction?
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                CalendarView(selectedValueCallback: { value in
                    selectedValue = value
                })
                .frame(width: UIScreen.main.bounds.width, height: 330)
                HStack {
                    Button(action: {
                    }) {
                        Image("keyboard_arrow_left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                    }
                    
                    HStack{
                        if let selectedValue = selectedValue {
                            Text("\(dateFormatterHelper.formatterFrom.string(from: selectedValue.fromDate)) - \(dateFormatterHelper.formatterTo.string(from: selectedValue.toDate))")
                                .font(AppFont.semibold(size: 20).font)
                        } else {
                            Text("Select date")
                        }
                    }
                    
                    Button(action: {
                    }) {
                        Image("keyboard_arrow_right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("dismiss")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top, 0)
            }
            
            VStack {
                HStack {
                    Text("Guests")
                        .font(AppFont.semibold(size: 16).font)
                    Spacer()
                    Button("Clear") {
                        adultsValue = 0
                        childrensValue = 0
                    }
                    .font(AppFont.regular(size: 16).font)
                }
                .padding()
                
                VStack {
                    Divider()
                    CellView(value: $adultsValue,
                             title: "Adults",
                             description: "after 18")
                    Divider()
                    CellView(value: $childrensValue,
                             title: "Children's",
                             description: "0 - 12 years")
                    Divider()
                }
            }
            
            Button(action: {
                isAlertPresented = true
                alertAction = .ok
            }, label: {
                HStack(spacing: 11) {
                    Image("bookIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Text("Book Now")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 52)
                .background(AppColor.buttonColor.color)
                .cornerRadius(20)
                .padding(.horizontal, 16)
            })
            .padding(.bottom, 15)
            
            .alert(isPresented: $isAlertPresented) {
                guard let fromDate = selectedValue?.fromDate, let toDate = selectedValue?.toDate else {
                    return Alert(title: Text("Please select a date"))
                }
                return Alert(title: Text("Success!"),
                      message: Text("You have successfully booked for the date \(dateFormatterHelper.formatterFrom.string(from: fromDate)) - \(dateFormatterHelper.formatterTo.string(from: toDate))\nAdults: \(adultsValue)\nChildren's: \(childrensValue)"),
                      dismissButton: .default(Text("OK"), action: {
                    presentationMode.wrappedValue.dismiss()
                }))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct CellView: View {
    @Binding var value: Int
    var title: String
    var description: String
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(AppFont.regular(size: 14).font)
                    Text(description)
                        .foregroundColor(AppColor.lightGray.color.opacity(0.6))
                        .font(AppFont.regular(size: 12).font)
                    
                }
                .padding()
                Spacer()
                HStack {
                    Button(action: {
                        if value > 0 {
                            value -= 1
                        }
                    }) {
                        Text("-")
                            .font(AppFont.regular(size: 16).font)
                            .foregroundColor(AppColor.title.color)
                    }
                    
                    Text("\(value)")
                        .font(AppFont.regular(size: 16).font)
                        .foregroundColor(AppColor.title.color)
                        .padding()
                    
                    Button(action: {
                        value += 1
                    }) {
                        Text("+")
                            .font(AppFont.regular(size: 16).font)
                            .foregroundColor(AppColor.title.color)
                    }
                }
                .frame(height: 50)
                .padding(.trailing)
            }
        }
        
        .frame(height: 50)
    }
}
