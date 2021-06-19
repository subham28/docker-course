# basse image of the container
# here we could have mentioned some lower image such as alpine and then installed the node in that.
FROM node

# We can configure env variables here but the better solutiin would be to place them in docker-compose file
ENV SAMPLE_KEY=sample_value


# RUN -- We can execute any linux command using this
# When we start the container then /home/app directory would be created there
RUN mkdir -p /home/app

# We could used linux copy command in run itself but the problem is all the 
# commands that are placed in RUN executes inside the container and here COPY commands executes in host
# We basically use this command to copy files from host to inside the container.
# Here we are copying everything inside root directory from host to /home/app directory in container image
COPY . /home/app

# Executes an entry point linux command
CMD [ "node","server.js" ]