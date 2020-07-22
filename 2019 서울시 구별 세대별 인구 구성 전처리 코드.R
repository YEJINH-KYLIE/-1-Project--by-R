# 파일 불러오기
seoul_ppl_age_2019_Q3 <- read.table("/Users/yejinhwang/Desktop/NANO DEGREE/1st Project/4th_Competition/seoul_ppl_age_2019_Q3.txt",sep="\t")

# 구별 '계' 만 남기고, '한국인', '외국인' 행 삭제
seoul_ppl_age_2019_Q3_by_gu <- seoul_ppl_age_2019_Q3 %>% 
  filter(V3%in%c('계')) %>% 
  arrange(x = V2)

# 열이름 변경
seoul_ppl_age_2019_Q3_by_gu <- seoul_ppl_age_2019_Q3_by_gu %>% 
  rename('기간' = 'V1', '행정구역별' = 'V2', '구분' = 'V3', '계' = 'V4', '0세~4세' = 'V5', '5~9세' = 'V6', '10~14세' = 'V7', '15~19세' = 'V8', '20~24세' = 'V9', '25~29세' = 'V10', '30~34세' = 'V11', '35~39세' = 'V12', '40~44세' = 'V13', '45~49세' = 'V14', '50~54세' = 'V15', '55~59세' = 'V16', '60~64세' = 'V17', '65~69세' = 'V18', '70~74세' = 'V19', '75~79세' = 'V20', '80~84세' = 'V21', '85~89세' = 'V22', '90~94세' = 'V23', '95~99세' = 'V24', '100세 이상' = 'V25')

# 
