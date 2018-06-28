FROM debian:latest

RUN apt update \
 && apt install \
  git \
  wget \
  pandoc \
  pandoc-citeproc \
  texlive-base \
  texlive-latex-base \
  texlive-latex-recommended \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  -y

ADD eisvogel.tex /usr/share/pandoc/data/templates/eisvogel.latex
ADD ieee.csl /ieee.csl
ADD pandoc.sh /pandoc.sh

CMD ["bash",  "/pandoc.sh"]

