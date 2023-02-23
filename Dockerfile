FROM loopbackkr/pytorch:1.11.0-cuda11.3-cudnn8

WORKDIR /workspace
ENV PYTHONPATH=/workspace

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ENV nnUNet_raw_data_base=/workspace/nnUNet_raw_data_base
ENV nnUNet_preprocessed=/workspace/nnUNet_preprocessed
ENV RESULTS_FOLDER=/workspace/nnUNet_trained_models

COPY ${PWD}/nnunet ./nnunet
