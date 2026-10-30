import SwiftUI

struct DetailMenuContent: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                productImage
                
                VStack(alignment: .leading, spacing: 0) {
                    productHeading
                    productDescription
                    icedOnlyLabel
                    productNotice
                        .padding(.top, 14)
                }
                .padding(EdgeInsets(top: 21, leading: 21, bottom: 48, trailing: 21))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
        }
    }
    
    private var productImage: some View {
        Image(.detail)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    private var productHeading: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center, spacing: 9) {
                Text("아이스 카스텔라 고구마 라떼")
                    .font(.SemiBold(23))
                    .foregroundStyle(.darkgary)
                    .fixedSize(horizontal: false, vertical: true)
                    .layoutPriority(1)
                
                Text("NEW")
                    .font(.SemiBold(14))
                    .foregroundStyle(.maingreen)
                    .fixedSize()
            }
            .padding(.vertical, 7)
            
            Text("Iced Castella Sweet Potato Milk")
                .font(.Regular(12))
                .foregroundStyle(.gray280)
                .frame(minHeight: 18, alignment: .leading)
        }
    }
    
    private var productDescription: some View {
        VStack(alignment: .leading, spacing: 28) {
            Text("""
                가을에 잘 어울리는 군고구마를 한 잔에 담은 음료.
                포슬한 카스텔라, 쫀득한 펄이 어우러져 다채로운 식감을 즐길
                수 있는 음료.
                """)
            .font(.Regular(14))
            .foregroundStyle(.darkgary)
            .lineSpacing(1)
            .fixedSize(horizontal: false, vertical: true)
            
            Text("6,900원")
                .font(.SemiBold(23))
                .foregroundStyle(.black)
        }
        .padding(.vertical, 14)
    }
    
    private var icedOnlyLabel: some View {
        Text("ICED ONLY")
            .font(.SemiBold(12))
            .foregroundStyle(.mainblue)
            .frame(maxWidth: .infinity)
            .frame(height: 36)
            .background(.white)
            .clipShape(Capsule())
            .overlay {
                Capsule()
                    .strokeBorder(.buttonBorder)
            }
            .padding(.top, 17)
            .padding(.horizontal, 4)
    }
    
    private var productNotice: some View {
        Text("""
            *컬러 드리즐은 시간이 지날수록 번지는 현상이 있으나
            음료 품질과는 무관하니 안심하고 드세요.
            """)
            .font(.Regular(14))
            .foregroundStyle(.gray400)
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 14)
            .padding(.vertical, 21)
            .background(.gray100)
        }
}
