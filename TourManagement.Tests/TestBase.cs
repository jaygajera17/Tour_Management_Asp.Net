using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System.Web;
using System.IO;

namespace TourManagement.Tests;

public abstract class TestBase
{
    protected Mock<HttpContextBase> MockHttpContext { get; private set; } = null!;
    protected Mock<HttpRequestBase> MockRequest { get; private set; } = null!;
    protected Mock<HttpResponseBase> MockResponse { get; private set; } = null!;
    
    protected void SetupTestEnvironment()
    {
        MockHttpContext = new Mock<HttpContextBase>();
        MockRequest = new Mock<HttpRequestBase>();
        MockResponse = new Mock<HttpResponseBase>();
        
        MockHttpContext.Setup(x => x.Request).Returns(MockRequest.Object);
        MockHttpContext.Setup(x => x.Response).Returns(MockResponse.Object);
    }
    
    protected void ConfigurePageContext(System.Web.UI.Page page)
    {
        var httpContext = new HttpContext(
            new HttpRequest("", "http://testhost/", ""),
            new HttpResponse(new StringWriter()));
        HttpContext.Current = httpContext;
    }
    
    protected void CleanupTestEnvironment()
    {
        HttpContext.Current = null;
    }
}