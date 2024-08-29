# Use an official lightweight image as a base
FROM ubuntu:20.04

# Install curl and bash
RUN apt-get update && apt-get install -y curl bash

# Copy the script to the container
COPY run_script.sh /run_script.sh

# Make the script executable
RUN chmod +x /run_script.sh

# Run the script
CMD ["/run_script.sh"]
