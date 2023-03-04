using dotnet_admin_api.data;
using dotnet_admin_api.models.system;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace dotnet_admin_api.Controllers;

[ApiController]
[Route("api/system/users")]
public class UserController : ControllerBase
{

    private readonly DotnetAdminApiContext context;

    public UserController(DotnetAdminApiContext context)
    {
        this.context = context;
    }

    [HttpGet]
    public Task<List<SysUser>> getAllUsers()
    {
        var sysUsers = context.SysUsers.ToListAsync();
        return sysUsers;
    }

    [HttpGet("{userId}")]
    public Task<SysUser> get(long userId)
    {
        var user = context.SysUsers.SingleAsync(u => u.UserId == userId);
        return user;
    }

    [HttpPost]
    public IActionResult post(SysUser user)
    {
        context.SysUsers.Add(user);
        context.SaveChanges();
        return Ok("create success");
    }
    
    [HttpPut]
    public IActionResult put(SysUser user)
    {
        // var sysUser = context.SysUsers.Single(u => u.UserId == user.UserId);
        context.SysUsers.Update(user);
        context.SaveChanges();
        return Ok("update success");
    }

    [HttpDelete("{userId}")]
    public IActionResult deleteById(long userId)
    {
        SysUser sysUser = context.SysUsers.Single(u => u.UserId == userId);
        context.SysUsers.Remove(sysUser);
        context.SaveChanges();
        return Ok();
    }

}
