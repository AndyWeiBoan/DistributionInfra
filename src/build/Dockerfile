FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS dotnet-build-env
ARG project_name
COPY /app /app
WORKDIR /app
RUN dotnet publish $project_name -o /publish --configuration Release

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
ARG project_name
WORKDIR /app
COPY --from=dotnet-build-env /publish .
ENV project_dll="${project_name}.dll"
ENTRYPOINT dotnet $project_dll