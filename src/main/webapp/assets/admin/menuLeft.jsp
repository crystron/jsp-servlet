<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form name="example" action="${pageContext.request.contextPath}/admin/Sach" method="get">
<div class="sidebar-nav navbar-collapse">
    <ul class="nav" id="side-menu">
        <li class="sidebar-search">
            <div class="input-group custom-search-form">
                <input type="text" name="search" id="search" class="form-control"  placeholder="Tìm kiếm sản phẩm....">
                <span class="input-group-btn">
                        <button class="btn btn-social-icon" type="submit">Tìm Kiếm</button>
                </span>
            </div>
            <!-- /input-group -->
        </li>
        <li> Nhập Thông Tin Cơ Bản  </li>
        <li>
            <a href="/admin/TaiKhoan"> <i class="fa fa-dashboard fa-fw"></i> Tài Khoản</a>
        </li>
        <li>
            <a href="/admin/DonHang"> <i class="fa fa-dashboard fa-fw"></i> Đơn Hàng</a>
        </li>
        <li>
            <a href="/admin/Sach"> <i class="fa fa-dashboard fa-fw"></i> Sách</a>
        </li>
        <li>
            <a href="/admin/DanhMuc"><i class="fa fa-dashboard fa-fw"></i> Danh mục</a>
        </li>
        <li>
            <a href="/admin/TheLoai"> <i class="fa fa-dashboard fa-fw"></i> Thể Loại</a>
        </li>
        <li> Nhập Đối Tượng Ngoài </li>
        <li>
            <a href="/admin/TacGia"> <i class="fa fa-dashboard fa-fw"></i> Tác Giả</a>
        </li>
        <li>
            <a href="/admin/NXB"> <i class="fa fa-dashboard fa-fw"></i> Nhà Xuất Bản</a>
        </li>
        <li>
            <a href="/admin/NCC"> <i class="fa fa-dashboard fa-fw"></i> Nhà Cung Cấp</a>
        </li>
        <li> Thống Kê </li>
        <li>
            <a href="/admin/ThongKe?name=tonKho"> <i class="fa fa-dashboard fa-fw"></i> Sách Tồn Kho</a>
        </li>
        <li>
            <a href="/admin/ThongKe?name=doanhThu"> <i class="fa fa-dashboard fa-fw"></i> Doanh Thu</a>
        </li>
        <li>
        <a href="/admin/ThongKe?name=top10"> <i class="fa fa-dashboard fa-fw"></i> Sách bán chạy</a>
        </li>
    </ul>
</div>
</form>