tag: terminal
-

# Creation commands
dotnet new: insert("dotnet new ")
dotnet new console: insert("dotnet new console ")
dotnet new test: insert("dotnet new mstest ")
dotnet new [library | class]: insert("dotnet new classlib ")
dotnet new solution: insert("dotnet new sln ")

dotnet solution add: insert("dotnet sln add ")
dotnet solution add all projects:
    insert("Get-ChildItem -Recurse -Filter *.csproj | % { dotnet sln add ")
    key($)
    insert("_.FullName } ")

dotnet build: insert("dotnet build ")
dotnet run: insert("dotnet run ")
dotnet test: insert("dotnet test ")
dotnet clean: insert("dotnet clean ")
