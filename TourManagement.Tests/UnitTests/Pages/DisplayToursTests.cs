using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace TourManagement.Tests;

[TestClass]
public class DisplayToursTests : TestBase
{
    private DisplayTours? _target;
    
    [TestInitialize]
    public void Initialize()
    {
        SetupTestEnvironment();
        _target = new DisplayTours();
        ConfigurePageContext(_target);
    }
    
    [TestMethod]
    public void PageLoad_WhenCalled_ShouldInitializeCorrectly()
    {
        // Arrange
        var sender = new object();
        var args = EventArgs.Empty;
        
        // Act
        _target!.Page_Load(sender, args);
        
        // Assert
        Assert.IsNotNull(_target);
        // Add more specific assertions based on your page logic
    }
    
    [TestMethod]
    public void Page_WhenInitialized_ShouldHaveCorrectProperties()
    {
        // Arrange & Act
        // Page is initialized in TestInitialize
        
        // Assert
        Assert.IsNotNull(_target);
        Assert.IsNotNull(_target.Page);
    }
    
    [TestCleanup]
    public void Cleanup()
    {
        _target?.Dispose();
        CleanupTestEnvironment();
    }
}