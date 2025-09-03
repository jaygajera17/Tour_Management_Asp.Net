using Moq;
using System.Web;

namespace TourManagement.Tests.TestHelpers;

public static class MockingHelper
{
    public static Mock<HttpContextBase> CreateMockHttpContext()
    {
        var mockContext = new Mock<HttpContextBase>();
        var mockRequest = new Mock<HttpRequestBase>();
        var mockResponse = new Mock<HttpResponseBase>();
        var mockSession = new Mock<HttpSessionStateBase>();
        
        mockContext.Setup(x => x.Request).Returns(mockRequest.Object);
        mockContext.Setup(x => x.Response).Returns(mockResponse.Object);
        mockContext.Setup(x => x.Session).Returns(mockSession.Object);
        
        return mockContext;
    }
    
    public static void SetupMockRequest(Mock<HttpRequestBase> mockRequest, string url = "http://localhost/")
    {
        mockRequest.Setup(x => x.Url).Returns(new Uri(url));
        mockRequest.Setup(x => x.HttpMethod).Returns("GET");
        mockRequest.Setup(x => x.UserAgent).Returns("TestAgent/1.0");
    }
    
    public static Mock<HttpSessionStateBase> CreateMockSession()
    {
        var mockSession = new Mock<HttpSessionStateBase>();
        var sessionData = new Dictionary<string, object>();
        
        mockSession.Setup(x => x[It.IsAny<string>()])
            .Returns<string>(key => sessionData.ContainsKey(key) ? sessionData[key] : null);
        
        mockSession.Setup(x => x[It.IsAny<string>()] = It.IsAny<object>())
            .Callback<string, object>((key, value) => sessionData[key] = value);
            
        return mockSession;
    }
}