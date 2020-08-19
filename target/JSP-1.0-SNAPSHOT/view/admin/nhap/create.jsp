<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/admin/nhap-sach" method="post">
    <div class="row">
        <div class="col-md-6">
            <div class="box-body">
                <script src="<c:url value='/assets/admin/vendor/jquery/jquery.min.js'/>"> </script>
                <label class="container2"> Chọn nhà cung cấp</label>
                <select class="form-control" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;" name="maNCC" id="maNCC">
                    <c:forEach items="${NCC}" var="item">
                        <option id="${item.maNCC}" value="${item.maNCC}">${item.tenNCC}</option>
                    </c:forEach>
                </select>
                <div class="left-container">
                    <select class="form-control" style="border-radius: 0;box-shadow:none; border-color: #d2d6de;" name="maSach" id="maSach">
                        <c:forEach items="${Sach}" var="item">
                        <option id="${item.maSach}" value="${item.maSach}">${item.tenSach}</option>
                        </c:forEach>
                    </select
                </div>
                <div class="right-container">
                    <button class="add_form_field">Nhập sách &nbsp;
                        <span style="font-size:16px; font-weight:bold;">+ </span>
                    </button>
                </div>
                <script type='text/javascript'>
                    $(document).ready(function() {
                        var max_fields = 10;
                        var wrapper = $(".right-container");
                        var add_button = $(".add_form_field");
                        var x = 1;
                        $(add_button).click(function(e) {
                            e.preventDefault();
                            if (x < max_fields) {
                                x++;
                                $(wrapper).append("<div> <input type='text' name='bookID' value='" + document.getElementById("maSach").value +  "'/> <input type='number' name='quantity' min='1' placeholder='Nhập số lượng'> <input type='number' name='chietKhau' min='0' placeholder='Nhập chiết khấu'> <a href=\"#\" class=\"delete\">Xóa lựa chọn</a></div>")
                            } else {
                                alert('You Reached the limits')
                            }
                        });

                        $(wrapper).on("click", ".delete", function(e) {
                            e.preventDefault();
                            $(this).parent('div').remove();
                            x--;
                        })
                    });
                </script>
            </div>
        </div>
    </div>
    <div class="col-md-1">
        <input type="submit" name="submit" value="Thêm phiếu nhập" class="btn_dark_grey"></p>
    </div>
</form>
