FROM arm32v7/python:2
WORKDIR /root/

RUN apt-get update && \
  apt-get install -y ttf-freefont && \
  pip install spidev numpy pillow && \
  git clone https://github.com/pimoroni/unicorn-hat-hd --depth=1

WORKDIR unicorn-hat-hd/examples/
ENV PYTHONPATH=/root/unicorn-hat-hd/library/
CMD ["demo.py"]
ENTRYPOINT ["python"]
