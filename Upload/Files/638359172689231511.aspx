<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Form_BuyerVsClassifierGradeMaster.aspx.cs" Inherits="Form_BuyerVsClassifierGradeMaster" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><h3 style="color:White; height:20%;" id=" ">UP & DOWN GRADE MAPPING</h3></center>

<div id="Div1"  style="background-color:White; width:100%; height:40px; overflow: auto" align="center">
<center>
<table  style="border:Solid 3px #e4e4e4; width:50%;" align="center" class="col1">
  <tr>
            <td align="center">
                <asp:Label Text="Crop Year:" ID="Label1" runat="server" ForeColor="Black" Font-Names="Verdana" Height="22px"></asp:Label>
            &nbsp;<asp:DropDownList ID="cbxcrop" runat="server" Font-Names="Verdana"  Height="23px" Width="153px">
                    <asp:ListItem Value="< -- Select -- >">&lt; -- Select -- &gt;</asp:ListItem>
                    </asp:DropDownList>
            </td>
             <td align="center">
                <asp:Label Text="Variety:" ID="Label2" runat="server" ForeColor="Black" Font-Names="Verdana" Height="22px"></asp:Label>
            &nbsp;<asp:DropDownList ID="cbxvariety" runat="server" Font-Names="Verdana"  Height="23px" Width="153px">
                    <asp:ListItem Value="< -- Select -- >">&lt; -- Select -- &gt;</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td>
    <asp:Button runat="server" ID="btnView" 
        Text="View" Width="60px" onclick="btnAddToMaster_Click" />
            </td>
        </tr>
        
     </table>
     </center>
 </div>
        

<div id="Div2"  style="background-color:White; width:100%; height:380px; overflow: auto" align="center">
<center>
<table  style="border:Solid 3px #e4e4e4; width:100%;" align="center" class="col1">
 
        
<tr>
<td colspan="4" align="center">
               <asp:GridView ID="GridViewSamp" runat="server"  
            AutoGenerateColumns="False" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" 
            OnPageIndexChanging="GridViewSamp_PageIndexChanging" 
            OnRowCancelingEdit="GridViewSamp_RowCancelingEdit" 
            OnRowEditing="GridViewSamp_RowEditing"  ShowFooter="True" 
            Width="50%" ForeColor="Black" onrowdatabound="GridViewSamp_RowDataBound">
            <AlternatingRowStyle BackColor="#FFD4BA" />
            <FooterStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />
            <PagerStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle BackColor="#FF9E66" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Size="15px" Height="30px" />
            <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                Font-Size="13px" Height="20px" />
            <Columns>
             <asp:TemplateField HeaderStyle-Width="10%" HeaderText="CROP" >
                   <ItemTemplate>
                        <asp:Label ID="lblCrop" runat="server" Text='<%#Eval("CROP") %>'></asp:Label>
                    </ItemTemplate>
                     <%-- <FooterTemplate>
                        <asp:TextBox ID="txtBuyerGradeGroup" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqbaleno" runat="server" 
                            ControlToValidate="txtBuyerGradeGroup" ErrorMessage="*" 
                            ValidationGroup="ValgrpCust"></asp:RequiredFieldValidator>
                    </FooterTemplate>--%>
                   
                </asp:TemplateField>
              
             <asp:TemplateField HeaderStyle-Width="10%" HeaderText="VARIETY" >
                   <ItemTemplate>
                        <asp:Label ID="lblVariety" runat="server" Text='<%#Eval("VARIETY") %>'></asp:Label>
                    </ItemTemplate>
                     <%-- <FooterTemplate>
                        <asp:TextBox ID="txtBuyerGradeGroup" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqbaleno" runat="server" 
                            ControlToValidate="txtBuyerGradeGroup" ErrorMessage="*" 
                            ValidationGroup="ValgrpCust"></asp:RequiredFieldValidator>
                    </FooterTemplate>--%>
                    
                </asp:TemplateField>
                
             <asp:TemplateField HeaderStyle-Width="30%" HeaderText="BUYER GRADE GROUP" >
                   <ItemTemplate>
                        <asp:Label ID="lblBuyerGradeGroup" runat="server" Text='<%#Eval("BUYER_GRADE_GRP") %>'></asp:Label>
                    </ItemTemplate>
                     <%-- <FooterTemplate>
                        <asp:TextBox ID="txtBuyerGradeGroup" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqbaleno" runat="server" 
                            ControlToValidate="txtBuyerGradeGroup" ErrorMessage="*" 
                            ValidationGroup="ValgrpCust"></asp:RequiredFieldValidator>
                    </FooterTemplate>--%>
                    
                </asp:TemplateField>
              
             <asp:TemplateField HeaderStyle-Width="30%" HeaderText="CLASSIFIER GRADE GROUP">
                  <ItemTemplate>
                        <asp:Label ID="lblClassifierGradeGroup" runat="server" Text='<%#Eval("CLASSIFIER_GRADE_GRP") %>'></asp:Label>
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
                  
                </asp:TemplateField>
                
             <asp:TemplateField HeaderStyle-Width="20%" HeaderText="PAIR TYPE">
                    <ItemTemplate>
                     <asp:DropDownList ID="ddlPairType" runat="server" Width='100px' ></asp:DropDownList>
                        <%--<asp:Label ID="lblrejtype" runat="server" Text='<%# Eval("PAIR_TYPE") %>'></asp:Label>--%>
                    </ItemTemplate>
                    <%--<EditItemTemplate>
                        <asp:Label ID="lbltemprejtype" runat="server" Text='<%# Eval("PAIR_TYPE") %>' 
                            Visible="false" />
                        <asp:DropDownList ID="ddlPairType" runat="server">
                        </asp:DropDownList>
                    </EditItemTemplate>--%>
                    <%--<FooterTemplate>
                        <asp:TextBox ID="txtAddAddrejtype" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqtrejtype" runat="server" 
                            ControlToValidate="txtAddAddrejtype" ErrorMessage="*" 
                            ValidationGroup="ValgrpCust"></asp:RequiredFieldValidator>
                    </FooterTemplate>--%>
                   <%-- <HeaderStyle Width="30%" />--%>
                </asp:TemplateField>
                              
                                
               <%-- <asp:TemplateField HeaderStyle-Width="15%" HeaderText="Edit/Delete">
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
                    <FooterTemplate>
                        <asp:Button ID="btnInsertRecord0" runat="server" CommandName="Insert" 
                            Text="Add" ValidationGroup="ValgrpCust" />
                    </FooterTemplate>
                    <HeaderStyle Width="15%" />
                </asp:TemplateField>--%>
            </Columns>
        </asp:GridView>
</td>
</tr>
</table>
</center>
</div>

<div id="Div3"  style="background-color:White; width:100%; height:100%;" align="center">
<center>
<table style="border:Solid 3px #e4e4e4; width:100%;" align="center" class="col1">
<tr> <td> <asp:Label ID="lblRecordCount"  ForeColor="Blue" BackColor="White" Font-Size=Small Font-Bold="true" runat="server" Text=""></asp:Label></td></tr>
<tr>

<td colspan="4" align="center">
    <asp:Button runat="server" ID="btnAddToMaster" 
        PostBackUrl="~/Form_BuyerVsClassifierGradeMaster.aspx" 
        Text="Add to Master" Width="109px" onclick="btnAddToMaster_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
             <asp:Button runat="server" ID="btnExportToExcel" Text="Export To Excel" Width="110px" 
                onclick="btnExportToExcel_Click" /> 
</td>
</tr>
</table>
</center>
</div>
<div>
<asp:Label ID="lblMessage"  ForeColor="Red" BackColor="Yellow" Font-Size=Large Font-Bold="true" runat="server" Text=""></asp:Label>
</div>
</asp:Content>

