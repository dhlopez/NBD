<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductionDailyReport.aspx.cs" Inherits="Navi.DailyReport" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

      <!-- Bootstrap Core CSS -->
    <link href="../style/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../style/css/modern-business.css" rel="stylesheet" />
    <link href="../Style/css/Custom.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="../style/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>

    </style>
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../View/Login.aspx">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../View/Project.aspx">Projects</a>
                    </li>
                    <li>
                        <a href="../View/Bid.aspx">Bid</a>
                    </li>
                    <li>
                        <a href="../View/DesignBudget.aspx">Budget</a>
                    </li>
                    <li>
                        <a href="ProductionPlan.aspx">Production Plan</a>
                    </li>
                    <li>
                        <a href="../View/ClientSearch.aspx">Client</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../View/ProjectAdminReport.aspx">Project Admin</a>
                            </li>
                            <li>
                                <a href="../View/Labour.aspx">Labour</a>
                            </li>
                            <li>
                                <a href="../View/ProductionDailyReport.aspx">Daily Work</a>
                            </li>
                            <li>
                                <a href="../View/Summary.aspx">Summary</a>
                            </li>  
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../View/Logout.aspx">Logout</a>
                            </li>
                            <li>
                                <a href="../View/Settings">Settings</a>
                            </li>
                            <li>
                                <a href="../View/Help.aspx">Help</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <form id="form1" runat="server">
    
    
    
    <h1>Daily Work Report</h1>
        <asp:Label ID="Label2" runat="server" Text="Project: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" DataSourceID="ObjectDataSource4" DataTextField="projName" DataValueField="ID">

        </asp:DropDownList>
  
    
   
            
       
        <asp:Label ID="Label1" runat="server" Text="Date: "></asp:Label>
        <asp:Label ID="Label8" runat="server"></asp:Label>
            <div class="calendarWrapper">
        <asp:Calendar ID="Calendar1" runat="server" DayNameFormat="FirstLetter" Font-Names="Tahoma" Font-Size="11px" NextMonthText="." PrevMonthText="." SelectMonthText="»" SelectWeekText="›" CssClass="myCalendar" OnSelectionChanged="Calendar1_SelectionChanged">
                       <OtherMonthDayStyle ForeColor="#b0b0b0" />
            <DayStyle CssClass="myCalendarDay" ForeColor="#2d3338" />
            <DayHeaderStyle CssClass="myCalendarDayHeader" ForeColor="#2d3338" />
<SelectedDayStyle Font-Bold="True" Font-Size="12px" CssClass="myCalendarSelector" />
            <TodayDayStyle CssClass="myCalendarToday" />
            <SelectorStyle CssClass="myCalendarSelector" />
            <NextPrevStyle CssClass="myCalendarNextPrev" />
            <TitleStyle CssClass="myCalendarTitle" />
        </asp:Calendar>
                </div>
  
        <asp:Label ID="Label3" runat="server" Text="Material Used"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource5" DataTextField="matDesc" DataValueField="ID">
        </asp:DropDownList>
           
            
    
            <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Unit Cost: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
     
            <asp:Label ID="Label6" runat="server" Text="Estimated Cost: "></asp:Label>
            <asp:Label ID="Label7" runat="server"></asp:Label>
      
            <asp:Label ID="Label13" runat="server"></asp:Label>
       
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
       
             
        <asp:Label ID="Label9" runat="server" Text="Worker"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource6" DataTextField="Worker" DataValueField="ID">
        </asp:DropDownList>
            
          

        Hours<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Text="Cost/Hr"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
       
        Estimated Cost: <asp:Label ID="Label11" runat="server"></asp:Label>
       
            <asp:Label ID="Label12" runat="server" Text="Task"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
       
            <asp:Label ID="Label15" runat="server"></asp:Label>
         
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />



<asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.MATERIALTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_matDesc" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="matDesc" Type="String" />
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_matDesc" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.WORKERTableAdapter">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_ID" Type="Int32" />
                            </DeleteParameters>
                        </asp:ObjectDataSource>
          <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projName" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="projName" Type="String" />
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projName" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
    </form>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
</body>
</html>




