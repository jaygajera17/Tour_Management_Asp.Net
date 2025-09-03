using System.Web;
using System.Web.UI;

namespace TourManagement.Tests.TestHelpers;

public static class WebFormsTestHelper
{
    public static void InitializeHttpContext()
    {
        if (HttpContext.Current == null)
        {
            var request = new HttpRequest("", "http://localhost/", "");
            var response = new HttpResponse(new StringWriter());
            HttpContext.Current = new HttpContext(request, response);
        }
    }
    
    public static T CreateTestControl<T>() where T : Control, new()
    {
        var control = new T();
        var testPage = new Page();
        testPage.Controls.Add(control);
        return control;
    }
    
    public static void SetupTestPage(Page page, HttpContext? context = null)
    {
        context ??= new HttpContext(
            new HttpRequest("", "http://localhost/", ""),
            new HttpResponse(new StringWriter()));
            
        HttpContext.Current = context;
        page.SetIntrinsics(context);
    }
}