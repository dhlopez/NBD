<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignBudget.aspx.cs" Inherits="Navi.DesignBudget" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="../style/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../style/css/modern-business.css" rel="stylesheet" />
    <link href="../style/css/Tables.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="../style/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
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
            <div class="row">
                <div class="col-md-8">
                    <h1>Design Budget</h1>
                </div>
                <div class="col-md-2 col-md-offset-2">

                    <ul class="nav">
                        <li class="dropdown">
                            <a class="AddNew" href="#" data-toggle="dropdown">
                                <h5>Add New</h5>
                            </a>
                            <div class="dropdown-menu" style="padding: 10px; padding-bottom: 0px;">
                                <div class="form-group">
                                    <table class="nav-justified">
                                        <tr>
                                            <td>Client</td>
                                            <td>

                                                <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Project Name</td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" CausesValidation="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Site</td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" CausesValidation="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">Bid Date</td>
                                            <td class="auto-style1">
                                                <asp:TextBox ID="TextBox5" runat="server" CausesValidation="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Est. Cost</td>
                                            <td>
                                                <asp:TextBox ID="TextBox6" runat="server" CausesValidation="True"></asp:TextBox>
                                                <br />
                                                <asp:Button ID="Button1" runat="server" Text="Submit" />
                                            </td>

                                        </tr>
                                    </table>
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Client name is required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Project name is required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Project Site is required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bid date is required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator><br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Est. Cost is required" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Design Cost cannot be more than 10%" ForeColor="Red" MinimumValue="0" MaximumValue="1000" ControlToValidate="TextBox6"></asp:RangeValidator>

                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="form-group form-group-sm">
                <div class="row">
                    <div class="col-xs-6 col-sm-3">
                        <asp:Label Text="Project Name:" ID="lblProjectName" runat="server" />
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="projName" DataValueField="ID" class="form-control" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem Selected="True" Value="0">All Projects</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        Client<br />
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource6" DataTextField="cliName" DataValueField="ID" class="form-control" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem Selected="True" Value="0">All Clients</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        Bid Date From:
                        <asp:TextBox ID="txtBidDateF" runat="server" class="form-control" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        To:<asp:TextBox ID="txtBidDateT" runat="server" class="form-control" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        Est. Cost From<asp:TextBox ID="txtEstCostF" runat="server" class="form-control" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        To:<asp:TextBox ID="txtEstCostTo" runat="server" class="form-control" AutoPostBack="True"></asp:TextBox>
                    </div>
                </div>
            </div>




            <div class="row">
                <div class="col-xs-6">
                    <h3><asp:Label Text="Client" ID="lblClient" runat="server" /></h3>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" DataKeyNames="ID,Expr1" DataSourceID="ObjectDataSource2">
                        <Columns>
                            <asp:BoundField DataField="cliName" HeaderText="Client Name" SortExpression="cliName" />
                            <asp:BoundField DataField="Client Address" HeaderText="Client Address" ReadOnly="True" SortExpression="Client Address" />
                            <asp:BoundField DataField="Contact" HeaderText="Contact" ReadOnly="True" SortExpression="Contact" />
                            <asp:BoundField DataField="cliPhone" HeaderText="Phone" SortExpression="cliPhone" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-xs-6">
                    <asp:Label Text="NBD Staff" ID="lblStaff" runat="server" />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" DataKeyNames="ID,Expr1,Expr2" DataSourceID="ObjectDataSource3">
                        <Columns>
                            <asp:BoundField DataField="wrkTypeDesc" HeaderText="Position" SortExpression="wrkTypeDesc" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" DataKeyNames="ID" DataSourceID="ObjectDataSource4">
                <Columns>
                    <asp:BoundField DataField="projBidDate" HeaderText="Budget Submited" SortExpression="projBidDate" />
                    <asp:BoundField DataField="projEstStart" HeaderText="Estimated Begin Date" SortExpression="projEstStart" />
                    <asp:BoundField DataField="projEstEnd" HeaderText="Estimated End Date" SortExpression="projEstEnd" />
                    <asp:BoundField DataField="projSite" HeaderText="Project Site" SortExpression="projSite" />
                    <asp:BoundField DataField="projEstCost" HeaderText="Bid Amount" SortExpression="projEstCost" />
                </Columns>
            </asp:GridView>

            <h3><asp:Label Text="Design Hours" ID="lbldesBud" runat="server" /></h3>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" DataSourceID="ObjectDataSource5">
                <Columns>
                    <asp:BoundField DataField="taskDesc" HeaderText="Task" SortExpression="taskDesc" />
                    <asp:BoundField DataField="lreqEstDate" HeaderText="Date" SortExpression="lreqEstDate" />
                    <asp:BoundField DataField="lreqEstHours" HeaderText="Hours" SortExpression="lreqEstHours" />
                </Columns>
            </asp:GridView>



            <strong>
                <asp:Label Text="Total Hours:" ID="lbl" runat="server" /></strong>
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True">47</asp:TextBox>




            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DesignBudgetLibrary.NBD_SBDataSetTableAdapters.dropdownTableAdapter" UpdateMethod="Update">
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
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DesignBudgetLibrary.NBD_SBDataSetTableAdapters.ClientTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="Param2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" Name="Param3" PropertyName="Text" Type="String" DefaultValue="2000-01-01" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="Param4" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEstCostF" DefaultValue="0" Name="Param5" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEstCostTo" DefaultValue="9999" Name="Param6" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DesignBudgetLibrary.NBD_SBDataSetTableAdapters.NBDStaffTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="Param2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" DefaultValue="2000-01-01" Name="Param3" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="Param4" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEstCostF" DefaultValue="0" Name="Param5" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEstCostTo" DefaultValue="9999" Name="Param6" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DesignBudgetLibrary.NBD_SBDataSetTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projName" Type="String" />
                    <asp:Parameter Name="Original_projSite" Type="String" />
                    <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                    <asp:Parameter Name="Original_projEstStart" Type="String" />
                    <asp:Parameter Name="Original_projEstEnd" Type="String" />
                    <asp:Parameter Name="Original_projEstCost" Type="String" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="Param2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" PropertyName="Text" Name="Param3" Type="String" DefaultValue="2000-01-01"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="txtBidDateT" Name="Param4" PropertyName="Text" Type="String" DefaultValue="2020-01-01" />
                    <asp:ControlParameter ControlID="txtEstCostF" Name="Param5" PropertyName="Text" Type="String" DefaultValue="0" />
                    <asp:ControlParameter ControlID="txtEstCostTo" Name="Param6" PropertyName="Text" Type="String" DefaultValue="9999" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="projName" Type="String" />
                    <asp:Parameter Name="projSite" Type="String" />
                    <asp:Parameter Name="projBidDate" Type="DateTime" />
                    <asp:Parameter Name="projEstStart" Type="String" />
                    <asp:Parameter Name="projEstEnd" Type="String" />
                    <asp:Parameter Name="projEstCost" Type="String" />
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projName" Type="String" />
                    <asp:Parameter Name="Original_projSite" Type="String" />
                    <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                    <asp:Parameter Name="Original_projEstStart" Type="String" />
                    <asp:Parameter Name="Original_projEstEnd" Type="String" />
                    <asp:Parameter Name="Original_projEstCost" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DesignBudgetLibrary.NBD_SBDataSetTableAdapters.DesignBudgetHoursTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="Param2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" DefaultValue="2000-01-01" Name="Param3" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="Param4" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEstCostF" DefaultValue="0" Name="Param5" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEstCostTo" DefaultValue="9999" Name="Param6" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="AdminReportLibrary.NBD_SBDataSetTableAdapters.CLIENTTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_cliName" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cliName" Type="String" />
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_cliName" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
        </form>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>




