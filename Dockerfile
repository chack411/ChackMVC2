FROM microsoft/aspnet
# copy the contents of the local directory to /app/ on the image
COPY . /app
# set the working directory for subsequent commands
WORKDIR /app
# fetch the NuGet dependencies for our application
RUN ["kpm", "restore"]
# expose TCP port 5004 from container (see project.json)
EXPOSE 5004
# Configure the image as an executable
# When the image starts it will execute the �gk kestrel�h command
# effectively starting our web application
ENTRYPOINT ["k", "kestrel"]
