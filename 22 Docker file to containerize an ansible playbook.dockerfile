

#Docker file to containerize an ansible playbook 

FROM python:3.9-slim

WORKDIR /ansible

RUN pip install ansible

COPY playbook.yml .
COPY inventory .

CMD ["ansible-playbook", "playbook.yml", "-i", "inventory"]