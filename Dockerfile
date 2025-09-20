FROM quay.io/jupyter/scipy-notebook
WORKDIR /home/jovyan/work
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8888
CMD ["start-notebook.sh"]
