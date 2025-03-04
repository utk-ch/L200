FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

COPY requirements.txt /tmp/pip-tmp/
RUN pip install -r /tmp/pip-tmp/requirements.txt

# Set /usr/local/python as the default Python for bash
ENV PATH="/usr/local/bin:${PATH}"
ENV PYTHONPATH="/usr/local/bin"

CMD ["/bin/bash"]