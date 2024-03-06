<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab02.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="text-center">
        <div class="container text-center w-50 mt-3 border border-primary rounded-lg">
            <div class="bg-light">
                <asp:Label CssClass="h1 text-danger" ID="lblTd" runat="server" Text="ĐƠN ĐẶT HÀNG"></asp:Label>
            </div>
            <div class="row mb-2">          
            </div>
              <div class="row mb-2">
               <div class="col-2 text-right mt-2">
                <asp:Label  ID="Label7" runat="server" Text="Khach hang"></asp:Label>
            </div>
            <div class="col-8 text-right">
               
                <asp:TextBox Width="100%" ID="txtKhachhang" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvkhachhang"  ForeColor="Red" runat="server" ErrorMessage="(*)Khong duoc de trong" ControlToValidate="txtKhachhang" ></asp:RequiredFieldValidator>
            </div>
         </div>
        <div class="row mb-2">
               <div class="col-2 text-right mt-2">
                <asp:Label  ID="Label1" runat="server" Text="Dia Chi"></asp:Label>
            </div>
            <div class="col-8 text-right">
               
                <asp:TextBox Width="100%" ID="txtDiaChi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvdiachi" runat="server" ForeColor="Red" ErrorMessage="(*)Khong duoc de trong" ControlToValidate="txtDiaChi"  ></asp:RequiredFieldValidator>
            </div>
         </div>
        <div class="row mb-2">
               <div class="col-2 text-right mt-2">
                <asp:Label  ID="Label2" runat="server" Text="Ma So Thue"></asp:Label>
            </div>
            <div class="col-8 text-right">
                
                <asp:TextBox Width="100%" ID="txtThue" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvthue"  runat="server" ForeColor="Red" ErrorMessage="(*)MST khong duoc de trong" ControlToValidate="txtThue"  ></asp:RequiredFieldValidator>

                <asp:CompareValidator ID="cvthue"   runat="server" ForeColor="red" ErrorMessage="(*)Vui long nhap dung kieu du lieu" ControlToValidate="txtThue" Type="Integer" Operator="DataTypeCheck" ></asp:CompareValidator>
            </div>
         </div>
            <div class="row mb-2">
                <div class=" col-6 text-center mt-2 border border-primary">
                    <asp:Label ID="Label3" CssClass="h3 text-danger" runat="server" Text="Chon cac loai banh sau"></asp:Label>
                    <br />
                     <br />
                    <asp:DropDownList Width="100%" ID="ddlbanh" runat="server"></asp:DropDownList>
                    <br />
                     <br />
                    <asp:Label ID="Label4" runat="server" Text="So Luong: "></asp:Label>
                    <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Text="Cai"></asp:Label>
                                    <asp:RequiredFieldValidator  ID="rfvsoluong" runat="server" ForeColor="Red" ErrorMessage="(*)So luong khong duoc de trong" ControlToValidate="txtsoluong"  ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator   ID="revsoluong" runat="server" ControlToValidate="txtsoluong" ErrorMessage="(*)So luong phai la so duong "  ForeColor="red"  ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                     <br />
                     <br />
                    <asp:Button CssClass="btn btn alert-primary" ID="btchuyen" runat="server" Text=">" OnClick="btchuyen_Click" />
                </div>
                   <div class=" col-6 text-center mt-2 border border-primary">
                    <asp:Label ID="Label6" CssClass="h3 text-danger" runat="server" Text="danh sach cac loai banh duoc chon"></asp:Label>
                    <br />
                     <br />
                       <asp:ListBox CssClass="w-100" ID="lstbanh" SelectionMode="Multiple" runat="server"></asp:ListBox>
                <i class="bi bi-trash"></i>
                  
                    <asp:Button ID="Button1" runat="server" Text="Xoa" OnClick="Button1_Click" />
                </div>
            </div>
            <div class="row mb-2">
                <div class="col text-center mt-2">
                       <asp:Button ID="btnIn" CssClass="btn btn-danger" runat="server" Text="In don dat hang" OnClick="btnIn_Click" />

                </div>

            </div>

            <div>
                 <div>
                <asp:ValidationSummary  ID="ValidationSummary1" ForeColor="Red" runat="server" />
            </div>
            <div class="row mb-2">
                <div class="col mt-2">
                    <asp:Label ID="Lbketquaq" runat="server" ForeColor="Red" Text="Label"></asp:Label>

                </div>

            </div>
                </div>

            

        </div>
           
    </form>
</body>
</html>
