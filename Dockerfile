FROM openjdk:11

WORKDIR /root

COPY otp-1.5.0-shaded.jar .

COPY graphs ./graphs

RUN java -Xmx8G -jar otp-1.5.0-shaded.jar --build ./graphs/default
RUN java -Xmx8G -jar otp-1.5.0-shaded.jar --build ./graphs/nt
RUN java -Xmx8G -jar otp-1.5.0-shaded.jar --build ./graphs/midttrafik
RUN java -Xmx8G -jar otp-1.5.0-shaded.jar --build ./graphs/sydtrafik

EXPOSE 8888

CMD ["java", "-Xmx8G", "-jar", "otp-1.5.0-shaded.jar", "--router", "default", "--router", "nt",  "--router", "midttrafik", "--router", "sydtrafik","--graphs", "./graphs", "--port", "8888"]
