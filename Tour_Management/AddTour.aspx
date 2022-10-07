<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTour.aspx.cs" Inherits="Tour_Management.AddTour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
            .page-header {
                text-align:center;

            }
            .form-horizontal {
                font-size: 30px;
                text-align:center;
            }
            .row .form-horizontal {
                border-right: 1px double;
            }  
            .container {
            text-align: center;
            background-color: black;
            width: 100%;
            font-size: 30px;
            color: white;
            padding-bottom: 150px;
            opacity: 0.8;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="page-header" >
        <h1>Add New Tour</h1>    
    </div>
        <div class="container">
    <div class="row">
    <div class="form-horizontal col-md-7">  
         
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="l1"  runat="server" text="Name of Tour"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="tour_name" required="true" ForeColor="Black" class="form-control" runat="server"/>        
            </div>    
        </div>

        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label1" runat="server" text="Place"/>
            </div>
            <div class="col-sm-6">
                
                <asp:TextBox id="place" runat="server" required="true" ForeColor="Black" class="form-control"/>        
            </div>   
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label2" runat="server" text="Days"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="days" runat="server" required="true" ForeColor="Black" class="form-control"/>        
            </div>             
        </div>    
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label3" runat="server" text="Locations"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="locations" required="true" runat="server" ForeColor="Black" class="form-control"/>        
            </div>   
        </div>
         <div class="col-md-5">   
        <p style="text-align:center; font-size:30px"; > Image for Tour</p>
        <asp:FileUpload ID="FileUpload1"  Style="background-image: url('../Pics/add.png');" runat="server"/>
         
    </div> 
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label4" runat="server" text="Price"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="price" runat="server" required="true" ForeColor="Black" class="form-control"/>        
            </div>   
        </div>
        <div class="form-group">
            <div class="control-label col-sm-3">
                <asp:Label id="Label5" runat="server" text="Tour Info"/>
            </div>
            <div class="col-sm-6">
                <asp:TextBox id="tour_info" required="true" runat="server" TextMode="MultiLine" ForeColor="Black" class="form-control"/>        
            </div>   
        </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" ControlToValidate="tour_info"  ValidationExpression = "^[\s\S]{0,250}$" runat="server" ErrorMessage="Characters less than 250"></asp:RegularExpressionValidator>
        <div class="form-group">           
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="Register" runat="server" Text="Register" ForeColor="Black" OnClick="Register_Click" /></div>
                    <div class="control-label col-sm-3"><asp:Button BackColor="#cc6600" ID="Reset" runat="server" Text="Reset"  ForeColor="Black"  /></div>
        </div>
    </div>
   
        </div>
    </div>


    </form>
</body>
</html>
