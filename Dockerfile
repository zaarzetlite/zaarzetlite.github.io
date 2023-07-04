# Use the official Hugo Docker image as the base image
FROM klakegg/hugo:latest

# Set the working directory to /site
WORKDIR /site

# Copy the contents of the GitHub repository to the working directory
COPY . .
RUN ls -l
# Build the Hugo site
RUN hugo
RUN ls -l
# Set the output directory
# ARG OUTPUT_DIR=/output
# ENV OUTPUT_DIR=${OUTPUT_DIR}

# Copy the contents of the public folder to the output directory
# RUN mkdir -p ${OUTPUT_DIR} && cp -r public/. ${OUTPUT_DIR}
# RUN ls -l
# RUN cd public
# RUN ls -l
