<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ABC News - Trang quản trị hệ thống.">
    <meta name="keywords" content="quản trị, người dùng, loại tin, tin tức, ABC News">
    <meta name="author" content="ABC News">
    <title>ABC News - Trang Quản Trị</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Open+Sans:wght@400;600&display=swap">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Header -->
    <header class="site-header">
        <div class="container">
            <div class="logo">ABC <span>News</span></div>
            <nav class="menu">
                <a href="index.jsp">Trang chủ</a>
                <a href="news_list.jsp?type=vanhoa">Văn hóa</a>
                <a href="news_list.jsp?type=phapluat">Pháp luật</a>
                <a href="news_list.jsp?type=thethao">Thể thao</a>
                <a href="admin.jsp" class="active">Quản trị</a>
                <a href="logout.jsp">Đăng xuất</a>
            </nav>
            <div class="header-actions">
                <span class="user-info">Xin chào, Quản trị <%= session.getAttribute("user") != null ? session.getAttribute("user") : "Admin" %></span>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <section class="center-col">
            <h2>Quản trị hệ thống</h2>
            <div class="admin-actions">
                <a href="manage_users.jsp" class="admin-btn">Quản lý người dùng</a>
                <a href="manage_categories.jsp" class="admin-btn">Quản lý loại tin</a>
                <a href="manage_all_news.jsp" class="admin-btn">Quản lý tất cả tin tức</a>
            </div>
        </section>
    </div>

    <footer class="site-footer">
        <div class="container">
            <p>&copy; 2025 ABC News. All rights reserved.</p>
            <div class="social-links">
                <a href="#">Facebook</a> | <a href="#">Twitter</a> | <a href="#">Instagram</a>
            </div>
            <p>Liên hệ: contact@abcnews.vn | Hotline: 0123 456 789</p>
        </div>
    </footer>
</body>
</html>