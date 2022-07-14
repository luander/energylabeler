FROM python:3.7

RUN pip install awsenergylabelercli

RUN groupadd -r labeler && useradd --no-log-init -r -g labeler labeler

USER labeler

ENTRYPOINT [ "aws_energy_labeler_cli.py" ]
CMD [ "--help" ]