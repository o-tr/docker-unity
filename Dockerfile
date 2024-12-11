FROM ubuntu:24.04

RUN apt-get update;\
  apt-get install wget libgtk-3-dev curl cmake xz-utils -y;
RUN wget https://download.unity3d.com/download_unity/887be4894c44/UnitySetup-2022.3.22f1 -O UnitySetup;\
  chmod +x UnitySetup;\
  mkdir /opt/Unity;\
  echo "y\n" | ./UnitySetup -c Unity,Android,iOS,Windows-Mono -u -v -l /opt/Unity;
