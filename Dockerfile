FROM ubuntu:24.04

RUN apt-get update;
RUN apt-get install wget libgtk-3-dev -y;
RUN apt-get install curl -y;
RUN apt-get install cmake  -y;
RUN apt-get install xz-utils -y;
RUN wget https://download.unity3d.com/download_unity/887be4894c44/UnitySetup-2022.3.22f1 -O UnitySetup;
RUN chmod +x UnitySetup;
RUN mkdir /opt/Unity;
RUN echo "y\n" | ./UnitySetup -c Unity,Android,iOS,Windows-Mono -u -v -l /opt/Unity;
