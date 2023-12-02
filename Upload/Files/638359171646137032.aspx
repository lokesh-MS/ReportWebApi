<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Form_BaleTrack.aspx.cs" Inherits="Form_BaleTrack" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AjaxControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style type="text/css">
/*Calendar Control CSS*/
.cal_Theme1 .ajax__calendar_container   {
background-color: #DEF1F4;
border:solid 1px #77D5F7;
}


.cal_Theme1 .ajax__calendar_header  {
background-color: #ffffff;
margin-bottom: 4px;
}


.cal_Theme1 .ajax__calendar_title,
.cal_Theme1 .ajax__calendar_next,
.cal_Theme1 .ajax__calendar_prev    {
color: #004080;
padding-top: 3px;
}


.cal_Theme1 .ajax__calendar_body    {
background-color: #ffffff;
border: solid 1px #77D5F7;
}


.cal_Theme1 .ajax__calendar_dayname {
text-align:center;
font-weight:bold;
margin-bottom: 4px;
margin-top: 2px;
color: #004080;
}


.cal_Theme1 .ajax__calendar_day {
color: #004080;
text-align:center;
}


.cal_Theme1 .ajax__calendar_hover .ajax__calendar_day,
.cal_Theme1 .ajax__calendar_hover .ajax__calendar_month,
.cal_Theme1 .ajax__calendar_hover .ajax__calendar_year,
.cal_Theme1 .ajax__calendar_active  {
color: #004080;
font-weight: bold;
background-color: #DEF1F4;
}


.cal_Theme1 .ajax__calendar_today   {
font-weight:bold;
}


.cal_Theme1 .ajax__calendar_other,
.cal_Theme1 .ajax__calendar_hover .ajax__calendar_today,
.cal_Theme1 .ajax__calendar_hover .ajax__calendar_title {
color: #bbbbbb;
}
</style>
  <ajaxcontrol:toolkitscriptmanager id="AjaxScriptManager" runat="server"/>
    <center><h3 style="color:White; height:20%;" id=" ">BALE TRACE WITH UPDATION</h3></center>
<div id="Div1"  style="background-color:White; width:100%; height:100%;" align="center" >
  <center>
     <table style="border:Solid 3px #e4e4e4; width:100%;" align="center" class="col1">
      <tr>
       <td colspan="4" align="center">
          <asp:Label ID="lbl_Excel" runat="server" Text="Bale/Case Number" ForeColor="Black"></asp:Label>
           &nbsp;&nbsp;
           <asp:TextBox ID="txtBaleNumber" runat="server" > </asp:TextBox>
           &nbsp;&nbsp;
          <asp:Button ID="btnSearch" runat="server" Text="Search" 
               onclick="btnSearch_Click" />&nbsp;&nbsp;
              <asp:GridView ID="GridViewSample" runat="server"  
            AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" 
            OnPageIndexChanging="GridViewSample_PageIndexChanging" 
            OnRowDeleting="GridViewSample_RowDeleting" 
            OnRowCancelingEdit="GridViewSample_RowCancelingEdit" 
            OnRowEditing="GridViewSample_RowEditing" ShowFooter="True" 
            Width="65%" ForeColor="Black" onrowdatabound="GridViewSample_RowDataBound" 
              onrowupdating="GridViewSample_RowUpdating" PageSize="15" >
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <FooterStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />
            <PagerStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="11px" Height="30px" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="11px" Height="20px" />
            <Columns>
                <asp:TemplateField HeaderText="GPIL BALE NUMBER" Visible="False">
                    <ItemTemplate>
                        <asp:Label ID="lblBaleNumber" runat="server" Text='<%#Eval("GPIL_BALE_NUMBER") %>'></asp:Label>
                    </ItemTemplate>
                    
                    <HeaderStyle Width="35%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-Width="35%" HeaderText="ORGN_CODE" >
                   <ItemTemplate>
                        <asp:Label ID="lblOrgnCode" runat="server" Text='<%#Eval("ORGN_CODE") %>'></asp:Label>
                    </ItemTemplate>
                     <%-- <FooterTemplate>
                        <asp:TextBox ID="txtBuyerGradeGroup" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqbaleno" runat="server" 
                            ControlToValidate="txtBuyerGradeGroup" ErrorMessage="*" 
                            ValidationGroup="ValgrpCust"></asp:RequiredFieldValidator>
                    </FooterTemplate>--%>
                     <HeaderStyle Width="35%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-Width="35%" HeaderText="PROCESS_NAME">
                  <ItemTemplate>
                        <asp:Label ID="lblProcessName" runat="server" Text='<%#Eval("PROCESS") %>'></asp:Label>
                  </ItemTemplate>
                  
                   <%--
                    <EditItemTemplate>
                        <asp:TextBox ID="txtClassifierGradeGroup" runat="server" Text='<%#Eval("TB_LOT_NO") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtClassifierGradeGroup" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqtblot" runat="server" 
                            ControlToValidate="txtClassifierGradeGroup" ErrorMessage="*" 
                            ValidationGroup="ValgrpCust"></asp:RequiredFieldValidator>
                    </FooterTemplate>--%>
                    <HeaderStyle Width="35%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-Width="30%" HeaderText="REPORT_REFERENCE_NO">
                    <ItemTemplate>
                      <asp:Label ID="lblReportReference" runat="server" Width='100px' Text='<%# Eval("REPORT_REF") %>'></asp:Label>
                    </ItemTemplate>
                   <%-- <EditItemTemplate>
                        <asp:Label ID="lbltemprejtype" runat="server" Text='<%# Eval("PAIR_TYPE") %>' 
                            Visible="false" />
                        <asp:DropDownList ID="ddlPairType" runat="server" Width='100px'>
                        </asp:DropDownList>
                    </EditItemTemplate>--%>
                    <%--<FooterTemplate>
                        <asp:TextBox ID="txtAddAddrejtype" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqtrejtype" runat="server" 
                            ControlToValidate="txtAddAddrejtype" ErrorMessage="*" 
                            ValidationGroup="ValgrpCust"></asp:RequiredFieldValidator>
                    </FooterTemplate>--%>
                    <HeaderStyle Width="50%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="USER_REFERENCE_NO" >
                    <ItemTemplate>
                      <asp:Label ID="lblUserReference" runat="server" Width='100px' Text='<%# Eval("USER_REF") %>'></asp:Label>
                     
                    </ItemTemplate>
                     <HeaderStyle Width="50%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SQL STATUS"  >
                    <ItemTemplate>
                      <asp:Label ID="lblSqlStatus" runat="server" Width='100px' Text='<%# Eval("SQL_STATUS") %>'></asp:Label>
                     
                    </ItemTemplate>
                     <HeaderStyle Width="20%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ERP STATUS"   >
                    <ItemTemplate>
                      <asp:Label ID="lblErpStatus" runat="server" Width='100px' Text='<%# Eval("ERP_STATUS") %>'></asp:Label>
                     
                    </ItemTemplate>
                     <HeaderStyle Width="20%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FROM GRADE"  >
                    <ItemTemplate>
                      <asp:Label ID="lblFromGrade" runat="server" Width='100px' Text='<%# Eval("FROM_GRADE") %>'></asp:Label>
                     
                    </ItemTemplate>
                    
                    <EditItemTemplate>
                        <asp:Label ID="lblTempFromGrade" runat="server" Text='<%# Eval("FROM_GRADE") %>' 
                            Visible="false" />
                        <asp:DropDownList ID="ddlFromGrade" runat="server" Width='100px'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    
                    
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TO GRADE">
                    <ItemTemplate>
                      <asp:Label ID="lblToGrade" runat="server" Width='100px' Text='<%# Eval("TO_GRADE") %>'></asp:Label>
                     
                    </ItemTemplate>
                    
                       <EditItemTemplate>
                        <asp:Label ID="lblTempToGrade" runat="server" Text='<%# Eval("TO_GRADE") %>' 
                            Visible="false" />
                        <asp:DropDownList ID="ddlToGrade" runat="server" Width='100px'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    
                    
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FROM SUB-INV">
                    <ItemTemplate>
                      <asp:Label ID="lblFromSubInventory" runat="server" Width='100px' Text='<%# Eval("FROM_SUBINV") %>'></asp:Label>
                     
                    </ItemTemplate>
                    
                       <EditItemTemplate>
                        <asp:Label ID="lblTempFromSubInventory" runat="server" Text='<%# Eval("FROM_SUBINV") %>' 
                            Visible="false" />
                        <asp:DropDownList ID="ddlFromSubInventory" runat="server" Width='100px'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    
                    
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TO SUB-INV">
                    <ItemTemplate>
                      <asp:Label ID="lblToSubInventory" runat="server" Width='100px' Text='<%# Eval("TO_SUBINV") %>'></asp:Label>
                     
                    </ItemTemplate>
                    
                    <EditItemTemplate>
                        <asp:Label ID="lblTempToSubInventory" runat="server" Text='<%# Eval("TO_SUBINV") %>' 
                            Visible="false" />
                        <asp:DropDownList ID="ddlToSubInventory" runat="server" Width='100px'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    
                    
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="MARKED WT">
                    <ItemTemplate>
                      <asp:Label ID="lblMarkedWt" runat="server" Width='100px' Text='<%# Eval("MARKED_WT") %>'></asp:Label>
                     
                    </ItemTemplate>
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ASCERTAIN WT">
                    <ItemTemplate>
                      <asp:Label ID="lblAscertainWt" runat="server" Width='100px' Text='<%# Eval("ASCERTAIN_WT") %>'></asp:Label>
                     
                    </ItemTemplate>
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CREATED DATE">
                    <ItemTemplate>
                      <asp:Label ID="lblCreatedDate" runat="server" Width='100px' Text='<%# Eval("CREATED_DATE") %>'></asp:Label>
                     
                    </ItemTemplate>
                     <HeaderStyle Width="30%" />
                </asp:TemplateField>
                
                <asp:TemplateField HeaderStyle-Width="15%" HeaderText="Edit/Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnEdit0" runat="server" CommandName="Edit" Text="Edit" />
                        <span onclick="return confirm('Are you sure want to delete?')">
                        <asp:LinkButton ID="btnDelete0" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        </span>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="btnUpdate0" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:LinkButton ID="btnCancel0" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </EditItemTemplate>
                    <%--<FooterTemplate>
                        <asp:Button ID="btnInsertRecord0" runat="server" CommandName="Insert" 
                            Text="Add" ValidationGroup="ValgrpCust" />
                    </FooterTemplate>--%>
                    <HeaderStyle Width="15%" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

          <asp:Button ID="btnClear" runat="server" Text="Clear" 
               onclick="btnClear_Click" />
         </td>
      </tr>
      <tr><td><br/></td></tr>
       </table>
      </center>
      </div>
      <div id="Div2"  style="background-color:White; width:100%; height:380px; overflow: auto" align="center" >
      <center>
     <table style="border:Solid 3px #e4e4e4; width:100%;" align="center" class="col1">
      <tr>
      <td colspan="4" align="center">
              &nbsp;</td>
      </tr>
      </table>
      </center>

      </div>
      <div id="Div3"  style="background-color:White; width:100%; height:100%;" align="center" >
      <center>
     <table style="border:Solid 3px #e4e4e4; width:100%;" align="center" class="col1">
      <tr>
        <td align="center" colspan="4">
                
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
             <asp:Button runat="server" ID="Button2" Text="Close" Width="83px" />           
        </td>
        
      </tr>
     </table>
  </center>
</div>
<div>
<asp:Label ID="lblMessage" ForeColor="Red" BackColor="Yellow" Font-Bold="true" runat="server" Text=""></asp:Label>
<br />

</div>
</asp:Content>



