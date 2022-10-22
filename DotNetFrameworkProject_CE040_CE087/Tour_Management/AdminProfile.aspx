<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="Tour_Management.AdminProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .page-header{
            text-align:center;

        }
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
.label-info{
           color:white;
           background-color:black;
           opacity:0.7;
          padding-left:50px;
          
          align-content:center;
        }
.page-header {
            background-image: url('../Pics/adminhp.jpg');
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
        .page-header .a{
            font-size:larger;
            background-color:darkslateblue;
            color:white;
            
        }
        .page-header .p{
            text-align:center;
            
            color:white;         
        }
        .page-header h2{
            align-items:center;
        }
        </style>
</head>
<body>
     <ul class="nav navbar nav-tabs">
         <li class="pull-left"><a href="AdminProfile.aspx"> Profile </a></li>
         <li class="pull-left"><a href="AddTour.aspx"> Add Tours</a></li>
         <li class="pull-left"><a href="TourCrud.aspx">Manage Tours</a></li>
          <li class="pull-left"><a href="allbooking.aspx">Current Booking</a></li>
          <li class="pull-right"><a href="AdminLogin2.aspx">Logout</a></li>
       
        
    </ul>
    <div class="page-header">    
                    <h2>
              <br/> <br/> <br/>
                <h1>
           Welcome to the Admin Section 
       </h1>
       <p>
           You can manage the admin work here.<br/>
           You can add tours and places for customers.
           

       </p>
            </h2>
        
    </div>
   
</body>
</html>
