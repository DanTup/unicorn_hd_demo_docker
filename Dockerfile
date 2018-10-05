FROM arm32v7/python:2
WORKDIR /root/

RUN pip install spidev numpy && \
  git clone https://github.com/pimoroni/unicorn-hat-hd --depth=1

WORKDIR unicorn-hat-hd/examples/
ENV PYTHONPATH=/root/unicorn-hat-hd/library/
CMD ["demo.py"]
ENTRYPOINT ["python"]
