#2019 청년-어린이 구별 분포 그래프 그리기 

# '어린이' 그래프 그리기
plot(x = sort(x = apt_08vs09_data_0708$어린이), 
     ann = F,
     type = 'o',
     ylab = '어린이', 
     ylim = c(5000,200000),
     pch = 19, col = 'green',
    )

# '어린이' 통계에 따른 오름차순 정렬 
seoul_child_19 <- apt_08vs09_data_0708 %>% 
  select(시군구, 어린이) %>% 
  arrange(x = 어린이)


# '어린이' 그래프에 구이름 추가  
text(x = sort(x= apt_08vs09_data_0708$어린이),
     labels = seoul_child_19$시군구,
     pos = 3,
     cex = 0.5,
     col = 'green')



# '청년' 그래프에 구이름 추가
lines(x = sort(x = apt_08vs09_data_0708$청년),
      type = 'o', 
      ylab = '청년', 
      pch = 19, 
      col = 'red'
)

# '청년' 통계에 따른 오름차순 정렬 
seoul_adult_19 <- apt_08vs09_data_0708 %>% 
  select(시군구, 청년) %>% 
  arrange(x = 청년)

# '청년' 그래프에 구이름 추가 
text(x = sort(x= apt_08vs09_data_0708$청년),
     labels = seoul_adult_19$시군구,
     pos = 3,
     cex = 0.5,
     col = 'red')

# 범례추가
legend('topleft', title = '세대', legend = c('청년','어린이'), fill = 2:3, cex = 0.7)

# 타이틀, 축이름 추가 
title(main = '구별 청년층-어린이 세대 통계',
      xlab = '시군구', 
      ylab = '인구수', 
      cex.main = 1, 
      cex.lab = 0.7)

