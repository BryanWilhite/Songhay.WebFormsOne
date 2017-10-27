<%@ WebHandler Language="C#" Class="Index" %>
using System.Web;

/// <summary>
/// Handles Index for WordWalkingStick.com
/// </summary>
public class Index : IHttpHandler
{
    /// <summary>
    /// Gets a value indicating whether another request can use the IHttpHandler instance.
    /// </summary>
    public bool IsReusable
    {
        get { return false; }
    }

    /// <summary>
    /// Enables processing of HTTP Web requests
    /// by a custom HttpHandler that implements the IHttpHandler interface.
    /// </summary>
    /// <param name="context">
    /// Encapsulates all HTTP-specific information
    /// about an individual HTTP request.
    /// </param>
    public void ProcessRequest(HttpContext context)
    {
        context.Response.Redirect("./Forms/");
    }
}