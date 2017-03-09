﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductionPlan.aspx.cs" Inherits="Navi.ProductionPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
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
    <style type="text/css">
        .AddNew {
            appearance: button;
            -moz-appearance: button;
            -webkit-appearance: button;
            text-decoration: none;
            font: menu;
            color: ButtonText;
            display: inline-block;
            padding: 2px 8px;
            width: 150px;
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
                    <h1>Production Plan</h1>
                </div>
                <div class="col-md-2 col-md-offset-2">

                    <ul class="nav">
                        <li class="dropdown">
                            <a class="AddNew" href="#" data-toggle="dropdown">
                                <h5>Add New</h5>
                            </a>
                            <div class="dropdown-menu pull-right" style="padding: 10px; padding-bottom: 0px;">
                                <div class ="form-group">
                                    <table class="nav-justified">
                    <tr>
                        <td class="auto-style1">Project Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Project Site</td>
                        <td>
                         <asp:TextBox ID="TextBox3" runat="server" CausesValidation="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Bid Date</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Submit" />
                        </td>
                    </tr>
              </table>
                                   <div class="form-group">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Project name is required"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Project site is required"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Bid Date is required"></asp:RequiredFieldValidator>
                                      </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

           
             

              <div class="row">
                <h3>Project Name:</h3>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="ObjectDataSource14" DataTextField="projName" DataValueField="ID" AutoPostBack="True">
        </asp:DropDownList>
</div>

            <div class="row">
              
                    <h3>Project Bid Information</h3>

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSource12">
                        <Columns>
                            <asp:BoundField DataField="projName" HeaderText="Project" SortExpression="projName" />
                            <asp:BoundField DataField="projSite" HeaderText="Site" SortExpression="projSite" />
                            <asp:BoundField DataField="projActStart" HeaderText="Begin Date" SortExpression="projActStart" />
                            <asp:BoundField DataField="projActEnd" HeaderText="Compl. Date" SortExpression="projActEnd" />
                            <asp:BoundField DataField="projActCost" HeaderText="Bid Amount" SortExpression="projActCost" />
                        </Columns>
                    </asp:GridView>
               
               
            </div>

 <h3>Material Requirements</h3>

<div class="row">
     <div class="col-md-6">
           
       
                 <h4>Plants</h4> 
                <asp:GridView ID="GridView5" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource6">
                    <Columns>
                        <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                        <asp:BoundField DataField="Code/Desc" HeaderText="Code/Desc" SortExpression="Code/Desc" />
                        <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                        <asp:BoundField DataField="Net/Unit" HeaderText="Net/Unit" SortExpression="Net/Unit" />
                        <asp:BoundField DataField="Ext_ Cost" HeaderText="Ext. Cost" ReadOnly="True" SortExpression="Ext_ Cost" />
                        <asp:BoundField DataField="Deliver" HeaderText="Deliver" SortExpression="Deliver" />
                        <asp:BoundField DataField="Install" HeaderText="Install" SortExpression="Install" />
                    </Columns>
                </asp:GridView>
         </div>
           
          <div class="col-md-6">
                 <h4>Pottery</h4> 
                <asp:GridView ID="GridView6" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource7">
                    <Columns>
                        <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                        <asp:BoundField DataField="Code/Desc" HeaderText="Code/Desc" SortExpression="Code/Desc" />
                        <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                        <asp:BoundField DataField="Net/Unit" HeaderText="Net/Unit" SortExpression="Net/Unit" />
                        <asp:BoundField DataField="Ext_ Cost" HeaderText="Ext_ Cost" ReadOnly="True" SortExpression="Ext_ Cost" />
                        <asp:BoundField DataField="Deliver" HeaderText="Deliver" SortExpression="Deliver" />
                        <asp:BoundField DataField="Install" HeaderText="Install" SortExpression="Install" />
                    </Columns>
                </asp:GridView>
              </div>
             </div>


            <div class="row">
                   
          <div class="col-md-6">
                 <h4> Materials</h4>
                <asp:GridView ID="GridView7" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource8">
                    <Columns>
                        <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                        <asp:BoundField DataField="Code/Desc" HeaderText="Code/Desc" SortExpression="Code/Desc" />
                        <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                        <asp:BoundField DataField="Net/Unit" HeaderText="Net/Unit" SortExpression="Net/Unit" />
                        <asp:BoundField DataField="Ext_ Cost" HeaderText="Ext_ Cost" ReadOnly="True" SortExpression="Ext_ Cost" />
                        <asp:BoundField DataField="Deliver" HeaderText="Deliver" SortExpression="Deliver" />
                        <asp:BoundField DataField="Install" HeaderText="Install" SortExpression="Install" />
                    </Columns>
                </asp:GridView>
   </div>
                   
          <div class="col-md-6">
                  <h4>Tools</h4>
                <asp:GridView ID="GridView8" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource9">
                    <Columns>
                        <asp:BoundField DataField="ptQty" HeaderText="Qty" SortExpression="ptQty" />
                        <asp:BoundField DataField="toolDesc" HeaderText="Desc" SortExpression="toolDesc" />
                        <asp:BoundField DataField="ptDeliverFrom" HeaderText="From" SortExpression="ptDeliverFrom" />
                        <asp:BoundField DataField="ptDeliverTo" HeaderText="To" SortExpression="ptDeliverTo" />
                    </Columns>
                </asp:GridView>
              </div>
     </div>
              
                 <h3>Labour Requirement</h3> 
    
                <asp:GridView ID="GridView9" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource17">
                    <Columns>
                        <asp:BoundField DataField="wrkTypeDesc" HeaderText="Desc" SortExpression="wrkTypeDesc" />
                        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                        <asp:BoundField DataField="Hours" HeaderText="Hours" ReadOnly="True" SortExpression="Hours" />
                        <asp:BoundField DataField="Cost/Hr" HeaderText="Cost/Hr" SortExpression="Cost/Hr" />
                        <asp:BoundField DataField="Ext_ Cost" HeaderText="Ext. Cost" ReadOnly="True" SortExpression="Ext_ Cost" />
                        <asp:BoundField DataField="lreqEstDate" DataFormatString="&quot;{0:d}&quot;" HeaderText="Date" SortExpression="lreqEstDate" />
                        <asp:BoundField DataField="taskDesc" HeaderText="Tasks" SortExpression="taskDesc" />
                    </Columns>
                </asp:GridView>
         <div class=" row">
             <div class="col-md-6">
                  <h3>Plan Total</h3>
                <asp:GridView ID="GridView10" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource16">
                    <Columns>
                        <asp:BoundField DataField="Total Est_ Rubric" HeaderText="Total Est. Rubric" ReadOnly="True" SortExpression="Total Est_ Rubric" />
                        <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" ReadOnly="True" />
                        <asp:BoundField DataField="Ext_ Cost" HeaderText="Ext. Cost" ReadOnly="True" SortExpression="Ext_ Cost" />
                    </Columns>
                </asp:GridView>
                 </div>

             <div class="col-md-6">
                    <h3>Project Team</h3>

                    <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover table-striped gridview" GridLines="None" AutoGenerateColumns="False" DataSourceID="ObjectDataSource13">
                        <Columns>
                            <asp:BoundField DataField="wrkTypeDesc" HeaderText="Type Desc" SortExpression="wrkTypeDesc" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                        </Columns>
                    </asp:GridView>
                 
                </div>

</div>




                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="MaterialTotal" DataTextField="Total" DataValueField="Total" Visible="False">
                </asp:DropDownList>
        




                <asp:ObjectDataSource ID="ObjectDataSource14" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.PROJECTdropdownTableAdapter"></asp:ObjectDataSource>
         
                <asp:ObjectDataSource ID="ObjectDataSource12" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                        <asp:Parameter Name="Original_projName" Type="String" />
                        <asp:Parameter Name="Original_projSite" Type="String" />
                        <asp:Parameter Name="Original_projActStart" Type="String" />
                        <asp:Parameter Name="Original_projActEnd" Type="String" />
                        <asp:Parameter Name="Original_projActCost" Type="String" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="projName" Type="String" />
                        <asp:Parameter Name="projSite" Type="String" />
                        <asp:Parameter Name="projActStart" Type="String" />
                        <asp:Parameter Name="projActEnd" Type="String" />
                        <asp:Parameter Name="projActCost" Type="String" />
                        <asp:Parameter Name="Original_ID" Type="Int32" />
                        <asp:Parameter Name="Original_projName" Type="String" />
                        <asp:Parameter Name="Original_projSite" Type="String" />
                        <asp:Parameter Name="Original_projActStart" Type="String" />
                        <asp:Parameter Name="Original_projActEnd" Type="String" />
                        <asp:Parameter Name="Original_projActCost" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource13" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.ProjectTeamTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
             
                <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.MaterialRequirements_PlantTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.MaterialRequirements_PotteryTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.MaterialRequirements_MaterialTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.ToolsRequiredTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
           
                <asp:ObjectDataSource ID="ObjectDataSource17" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.LaborRequirementV2TableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource16" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.LaborRequirementV2_totalTableAdapter">
                    <SelectParameters>
                        <asp:Parameter ConvertEmptyStringToNull="False" DefaultValue="3240" Name="param2" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="MaterialTotal" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ProductionPlanLibrary.NBD_SBDataSetTableAdapters.LaborRequirementV2_materialTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
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
