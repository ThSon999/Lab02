﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="DonDatHang.aspx.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">HỒ SƠ ĐĂNG KÝ</h2>
            <div class="row border border-primary bg-info">
                <div class="col-md-8 p-2 text-center">
                    Thông tin đăng ký
                </div>
                <div class="col-md-4 pt-2 text-center border-left border-primary">
                    Hồ sơ đăng nhập
                </div>
            </div>
            <div class="row border border-primary">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-3">
                            Tên đăng nhập
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtTenDN" runat="server" MaxLength="16" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTenDN" 
                                ControlToValidate="txtTenDN" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rvTenDN"
                                ControlToValidate="txtTenDN" Text="(*)" Display="Dynamic"
                                CssClass="text-danger" ValidationExpression="[\w|\d|&|_|!]{8}[\w|\d|&|_|!]+"
                                runat="server" ErrorMessage="Email không hợp lệ" />
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-md-3">
                            Mật khẩu
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtMK" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMatKhau" 
                               ControlToValidate="txtMK" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Mật khẩu không được bỏ trống">
                            </asp:RequiredFieldValidator> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Nhập lại mật khẩu
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtNLMK" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNLMK" 
                               ControlToValidate="txtNLMK" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Nhập lại mật khẩu không được bỏ trống">
                            </asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvMK" runat="server" Text="(*)" Display="Dynamic"
                                CssClass="text-danger" ControlToValidate="txtNLMK" ControlToCompare="txtMK"
                                ErrorMessage="Mật khẩu nhập lại không đúng"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row mb-2 bg-info">
                        <div class="col-md-12 text-center">
                            Thông tin cá nhân
                        </div>                       
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Họ tên khách hàng
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvHoTen" 
                               ControlToValidate="txtHoten" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa nhập họ tên" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Ngày sinh
                        </div>
                        <div class="col-md-9">
                            <div class="form-inline">
                                <asp:DropDownList ID="ddlNgay" CssClass="form-control" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvNgay" 
                               ControlToValidate="ddlNgay" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa chọn ngày" />
                             
                                <asp:DropDownList ID="ddlThang"  CssClass="form-control" runat="server"></asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="rfvThang" 
                               ControlToValidate="ddlThang" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa chọn tháng" />
                                <asp:DropDownList ID="ddlNam" CssClass="form-control" runat="server"></asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvNam" 
                               ControlToValidate="ddlNam" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa chọn năm" />
                            </div>
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-3">
                            Email
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revEmail"
                                ControlToValidate="txtEmail" Text="(*)" Display="Dynamic"
                                CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                runat="server" ErrorMessage="Email không hợp lệ" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Thu nhập
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RangeValidator ID="rvThuNhap" Text="(*)" Display="Dynamic" CssClass="text-danger"
                                ControlToValidate="txtThuNhap" MinimumValue="10000" MaximumValue="500000000"
                                runat="server" ErrorMessage="Thu nhập hợp lệ [1 - 500] triệu" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Giới tính
                        </div>
                        <div class="col-md-9">
                            <asp:CheckBox ID="chkPhai" runat="server" Text="Nam" Checked="true" OnCheckedChanged="chkPhai_CheckedChanged"/>

                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-3">
                            Địa chỉ
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtDiaChi" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Điện thoại
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-12 text-center">
                            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
                    <asp:ValidationSummary ID="vsTongHopLoi" HeaderText="Danh sách lỗi:" 
                         CssClass="text-danger" runat="server" />
                </div>
            </div>
         </div>
    </form>
</body>
</html>
