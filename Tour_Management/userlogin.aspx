<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Tour_Management.userlogin" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
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
    <script src="./script.js"></script>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'>
</head>
<body>

    





    <br />
    <br />


    </div>


    <div class="login-form">
        <div class="container" runat="server">
            <div class="page-header">
                <h1>User Login</h1>
            </div>
            <form id="form1" runat="server">
                <div class="form-horizontal">
                    <div class="form-group">
                        <div class="control-label col-sm-4">
                            <asp:Label ID="Label1" runat="server" Text="Email" /></div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" required="true" ForeColor="Black" class="form-control" /></div>
                    </div>
                    <div class="form-group">
                        <div class="control-label col-sm-4">
                            <asp:Label ID="Label2" runat="server" Text="Password" /></div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtPassword" type="password" required="true" runat="server" ForeColor="Black" class="form-control" />
                           
                        </div>
                        
                        
                           
                           <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="Register" runat="server" Text="Login" ForeColor="Black" class="form-control" OnClick="Btn_Submit" Height="35px" Width="92px" /></div>
                            <div class="control-label col-sm-2"><asp:Button BackColor="#cc6600" ID="Button1" runat="server" Text="Sign Up" ForeColor="Black" class="form-control" OnClick="Btn_reg" Height="38px" Width="137px" /></div>
                        
                    </div>
                </div>
            </form>
        </div>
    </div>
   
    <p>
        &nbsp;</p>
   
</body>

</html>
