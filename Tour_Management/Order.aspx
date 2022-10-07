<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Tour_Management.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
   <form runat="server">
     <div class="container" runat="server" >
        <div class="page-header">
                <h1>Confirm Tour</h1>
        </div>
        <div class="form-horizontal">   
        <div class="form-group"> 
             <div class="control-label col-sm-4"><asp:Label ID="Label1" runat="server" Text="Your Name"/></div>
             <div class="col-sm-6"><asp:TextBox ID="name" runat="server" required="true" ForeColor="Black" class="form-control"/></div>
        </div>
        <div class="form-group">
             <div class="control-label col-sm-4"><asp:Label ID="Label3" runat="server" Text="Your City"/></div>
             <div class="col-sm-6">
                 <asp:TextBox ID="city" runat="server"></asp:TextBox>
             </div>
            </div>
        <div class="form-group">
                <div class="control-label col-sm-4"><asp:Label ID="Label5" runat="server" Text="Tour Name "/></div>
                 <div class="col-sm-6"><asp:TextBox ID="tour_name"  required="true" runat="server"  ForeColor="Black" class="form-control"/></div>    
                 </div>    
       
        <div class="form-group">
                    <div class="control-label col-sm-4"><asp:Label ID="Label10" runat="server" Text="Mobile Number"/></div>
                    <div class="col-sm-6"><asp:TextBox ID="number" required="true" runat="server"  ForeColor="Black" class="form-control" TextMode="Number"/></div>
                </div>    
        <div class="form-group">           
                    <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="Book"  runat="server" Text="Register" ForeColor="Black" class="form-control" OnClick="btn_click" /></div>
                    <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="Reset" type="reset"  runat="server" Text="Reset"  ForeColor="Black" class="form-control"/></div>
                </div>   
            </div>     
     </div>
        </form>
</body>
</html>
