

plot(x = sort(x = apt_08vs09_data_0708$어린이), 
     ann = F,
     type = 'o',
     ylab = '어린이', 
     ylim = c(5000,200000),
     pch = 19, col = 'green',
     main = '거래횟수 & 평당가격중위값')

text(x = sort(x= apt_08vs09_data_0708$어린이),
     labels = seoul_child_19$시군구,
     pos = 3,
     cex = 0.5,
     col = 'green')

seoul_child_19 <- apt_08vs09_data_0708 %>% 
  select(시군구, 어린이) %>% 
  arrange(x = 어린이)

lines(x = sort(x = apt_08vs09_data_0708$청년),
      type = 'o', 
      ylab = '청년', 
      pch = 19, 
      col = 'red'
      )

seoul_adult_19 <- apt_08vs09_data_0708 %>% 
  select(시군구, 청년) %>% 
  arrange(x = 청년)


text(x = sort(x= apt_08vs09_data_0708$청년),
     labels = seoul_adult_19$시군구,
     pos = 3,
     cex = 0.5,
     col = 'red')


seoul_elderly_19 <- apt_08vs09_data_0708 %>% 
  select(시군구, 장년) %>% 
  arrange(x = 장년)

legend('topleft', title = '세대', legend = c('청년','어린이'), fill = 2:3, cex = 0.7)


title(main = '구별 청년층-어린이 세대 통계',
      xlab = '시군구', 
      ylab = '인구수', 
      cex.main = 1, 
      cex.lab = 0.7)

lines(x = sort(x = apt_08vs09_data_0708$장년),
      type = 'o', 
      ylab = '장년', 
      pch = 19, 
      col = 'blue'
)

text(x = sort(x= apt_08vs09_data_0708$장년),
     labels = seoul_elderly_19$시군구,
     pos = 3,
     cex = 0.5,
     col = 'blue')


gu_population_2019_barplot <- seoul_population_2019_Q3[,3:7]

barplot(t(gu_population_2019_barplot), main = "구별 세대 비율", 
        ylim = c(0,700000), col= rainbow(length(gu_population_2019_barplot)),
        space = 0.4, cex.axis = 0.7, las = 1, names.arg = c("강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"), cex = 0.5)

legend('topright', title = '세대', legend = c('노년','장년','청년','청소년','어린이'), col = c('purple', 'blue', 'green', 'yellow', 'red'), fill = 2:3, cex = 0.7)
