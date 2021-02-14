FROM gitpod/workspace-full-vnc

RUN sudo apt update
RUN sudo apt install firefox -y

RUN sudo apt-get install cmake -y
RUN sudo apt-get install libnss3 -y
RUN sudo apt install libgconf-2-4 -y

RUN cd ~
RUN wget http://beta.unity3d.com/download/0af376155913/UnitySetup
RUN chmod +x UnitySetup
RUN yes | sudo ./UnitySetup --unattended --verbose --install-location /opt/Unity
RUN rm UnitySetup
#ee
