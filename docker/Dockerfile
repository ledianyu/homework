# 베이스 이미지 설정
FROM tomcat:9.0

# 작성자 정보
LABEL Ledian yu

RUN apt-get update && apt-get install -y curl && \
    curl -L -o /usr/local/tomcat/webapps/ROOT.war \
     https://github.com/ledianyu/homework/releases/download/1.0.1/ROOT.war

# WAR 파일을 Tomcat의 웹 애플리케이션 디렉터리에 추가
# COPY /usr/local/tomcat/webapps/ROOT.war /usr/local/tomcat/webapps/

# CONTEXT_PATH 설정
ENV CONTEXT_PATH=/

# Tomcat을 포어그라운드에서 실행
CMD ["catalina.sh", "run"]
