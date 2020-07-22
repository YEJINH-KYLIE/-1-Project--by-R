library(readxl)
seoul_single_residential_2018 <- read_xlsx(path = '/Users/yejinhwang/Desktop/NANO DEGREE/1st Project/4th_Competition/2018_seoul_single_residential.xlsx')
seoul_single_residential_2010 <- read_xlsx(path = '/Users/yejinhwang/Desktop/NANO DEGREE/1st Project/4th_Competition/2010_seoul_single_residential.xlsx')

# 서울시 전체 1인가구 주거형태 그래프 그리기

# 년도별 주거형태 데이터프레임 만들기 
wideDF_2018vs2010 <- data.frame(주거형태 = c('단독주택', '아파트', '연립주택', '다세대주택', '비거주용건물내주택', '주택이외의거처'),
                                    '2018' = c(513330, 264524, 18680, 205178, 43335, 184374), 
                                    '2010' = c(468885, 170339, 18489, 83065, 18490, 95338))

# 2019, 2008 비교 막대 그래프 그리기
par(family = 'AppleGothic')
y <- rbind(wideDF_2018vs2010$X2018, wideDF_2018vs2010$X2010)
barplot(y,
        names.arg = wideDF_2018vs2010$주거형태,
        col = 2:3,
        ylim = c(0, 600000),
        xlab = "1인가구 거주형태",
        ylab = "합계",
        beside = T,
        cex.axis = 0.6,
        cex.names = 0.7,
        main = '1인가구 거주형태 변화')

legend('topright', title = '년도', legend = c(2019, 2008), fill = 2:3, cex = 0.7)


getwd()
apt_08vs09_data_0708 <- read.csv(file = '/Users/yejinhwang/Desktop/NANO DEGREE/1st Project/4th_Competition/apt_08vs09_data_0708.csv', header = T)


par(family = 'AppleGothic')
y <- rbind(apt_08vs09_data_0708$trans08, apt_08vs09_data_0708$trans19)
barplot(y,
        names.arg = apt_08vs09_data_0708$시군구,
        col = 3:2,
        ylim = c(0, 7000),
        xlab = "시군구",
        ylab = "거래수",
        beside = T,
        cex.axis = 0.5,
        cex.names = 0.4,
        main = '2008-2019 아파트 거래량 비교')

legend('topright', title = '년도', legend = c(2019, 2008), fill = 2:3, cex = 0.7)
