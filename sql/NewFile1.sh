dotnet user-secrets init
  
dotnet user-secrets set ConnectionStrings:DotnetAdmin "Server=localhost;User ID=sa;Password=Ikylin62#;Initial Catalog=vue_admin_api"  

dotnet ef dbcontext scaffold Name=ConnectionStrings:DotnetAdmin Microsoft.EntityFrameworkCore.SqlServer -o models/system --context-dir data -c DotnetAdminApiContext
