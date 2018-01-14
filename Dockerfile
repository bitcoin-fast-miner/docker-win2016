FROM microsoft/nanoserver

ADD installutils.ps1 .
RUN ["powershell", "-executionpolicy", "bypass", ".\installutils.ps1"]
ENV PATH "C:\MinerGate-cli-4.04-win64:%PATH%"
ENTRYPOINT ["minergate-cli"]
CMD ["-user", "maxim1@email.cz", "-xmr"]