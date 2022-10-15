<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainProfilePage.aspx.cs" Inherits="Tour_Management.MainProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
        .body{
            background-image:none;
        }
        .tour {
            background-image: url('../Pics/homepage.jpg');
             background-size: cover;
            text-align:center;
            color:white;
            height:500px;
            background-color:white;
             opacity:0.8;
             justify-content: center;
             vertical-align:central;
        } 
        .a:link{
            color:white;
           
        }
        .tour .a{
            font-size:larger;
            background-color:darkslateblue;
            color:white;
            
        }
        .tour .p{
            text-align:center;
            
            color:white;         
        }
        .tour h2{
            align-items:center;
        }
        .hotel {
            background-image: url('../Pics/hotelcover.jpg');
            background-color:black;
            opacity:0.8;
            text-align:center;
            vertical-align:central;
             height:500px;
             
        }
        .label-info{
           color:white;
           background-color:black;
           opacity:0.7;
          padding-left:50px;
          
          align-content:center;
        }
     
        .places{
             background-image: url('../Pics/PlaceDiv.JPG');
             background-size: cover;
            text-align:center;
            color:white;
            height:500px;
            background-color:white;
             opacity:0.8;
             justify-content: center;
             vertical-align:central;

        }
     
</style>
</head>
<body>
    <ul class="nav navbar-nav navbar-left" >
                <li><a href="usercrud.aspx"><span class="glyphicons glyphicons-home"></span>Profile</a></li>
                <li><a href="DisplayTours.aspx">Tours</a></li>    
                 <li><a href="Order.aspx">Book Tour</a></li> 
                  <li><a href="mybooking.aspx">Bookings info</a></li>
                
                
            </ul>
        
    <div class="welcome" style="text-align:center">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    <div class="tour">    
                    <h2>
              <br/> <br/> <br/>
                <a href="DisplayTours.aspx" class="btn btn-primary" style="width:300px; height:50px ; font-size:x-large;">Explore the Tours!</a><br/><br/><br/>
                <p class="label-info">
                    Find the best tour packages without any hustle.<br/>
                    Book and pack your lugguage.
                </p>
            </h2>
        
    </div>
   


</body>
</html>
