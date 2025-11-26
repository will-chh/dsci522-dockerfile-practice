# Start from the Jupyter team's minimal-notebook image
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy the Linux explicit conda lock file into the image
# (this file should already exist in your repo root)
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# Use mamba to update the base conda environment using the lock file.
RUN mamba update --quiet --file /tmp/conda-linux-64.lock