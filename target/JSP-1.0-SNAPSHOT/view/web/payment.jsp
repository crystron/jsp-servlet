<%@ page import="model.Cart" %>
<%@ page import="model.Item" %>
<%@ page import="java.util.Map" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/thanh-toan" method="post">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="box-body">
                    <div class="form-group">
                        <label>Tên khách hàng</label>
                        <input type="text" class="form-control" id="TenKH" name="tenKH" placeholder="Tên Khách Hàng" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                    </div>
                    <div class="form-group">
                        <label>Số điện thoại</label>
                        <input type="text" class="form-control" id="SoDT" name="soDT" placeholder="Số Điện Thoại" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                        <div class="input-group-btn">
                            <button class="btn btn-default checkmobile" type="button">
                                Kiểm tra
                            </button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" class="form-control" id="Email" name="email" placeholder="Email" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ giao hàng</label>
                        <input type="text" class="form-control" id="DiaChi" name="diaChi" placeholder="Địa Chỉ Giao Hàng" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;">
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Đặt hàng</button>
                </div>
            </div>
            <div class="col-md-7">
                <table id="example2" class="table table-bordered table-hover">
                    <caption style="text-align:center"><i><b>Danh Sách Sản Phẩm Đã Mua</b></i></caption>
                    <thead>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá thành</th>
                        <th>Thành tiên</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        Cart cart = (Cart) session.getAttribute("cart");
                    %>
                    <%for (Map.Entry<String, Item> list : cart.getCartItems().entrySet()) {%>
                    <tr>
                        <td>
                            <%=list.getValue().getSach().getTenSach()%>
                        </td>
                        <td align="center">
                            <input type="text" readonly value="<%=list.getValue().getQuantity()%>" />
                        </td>
                        <td>
                            <%=list.getValue().getSach().getGiaTien()%> VNĐ
                        </td>
                        <td> <%=list.getValue().getSach().getGiaTien()*list.getValue().getQuantity()%> VNĐ</td>
                    </tr>
                    <%}%>
                    <tr> Tổng Tiền:    <%=cart.total()%> VNĐ</tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            $('body').on('click','.checkmobile', function() {
                var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                var mobile = $('#SoDT').val();
                if(mobile !==''){
                    if (vnf_regex.test(mobile) == false)
                    {
                        alert('Số điện thoại của bạn không đúng định dạng!');
                    }else{
                        alert('Số điện thoại của bạn hợp lệ!');
                    }
                }else{
                    alert('Bạn chưa điền số điện thoại!');
                }
            });
        });
    </script>
</form>