<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ABC News - Trang quản lý tin tức dành cho phóng viên.">
    <meta name="keywords" content="tin tức, quản lý tin, phóng viên, ABC News">
    <meta name="author" content="ABC News">
    <title>ABC News - Trang Phóng Viên</title>
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
                <a href="reporter.jsp" class="active">Quản lý tin</a>
            </nav>
            <div class="header-actions">
                <input type="text" placeholder="Tìm kiếm..." class="search-bar">
                <span class="user-info">Xin chào, Phóng viên <%= session.getAttribute("user") != null ? session.getAttribute("user") : "User" %></span>
                <a href="logout.jsp" class="logout-btn">Đăng xuất</a>
            </div>
        </div>
    </header>

    <!-- News Ticker -->
    <div class="news-ticker">
        <div class="ticker-content">
            🎉 Chào mừng quý phóng viên đến với ABC News - Quản lý tin tức dễ dàng và hiệu quả!
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <div class="container-3col">
            <!-- Left Column: News List -->
            <section class="left-col">
                <article class="news-item">
                    <img src="https://picsum.photos/id/1015/300/200" alt="Tin AI">
                    <div class="news-content">
                        <h3><a href="#">Công nghệ AI thay đổi cuộc sống</a></h3>
                        <p>Trí tuệ nhân tạo ngày càng ảnh hưởng đến mọi lĩnh vực từ giáo dục đến y tế...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
                <article class="news-item">
                    <img src="https://picsum.photos/id/1011/300/200" alt="Tin Thể thao">
                    <div class="news-content">
                        <h3><a href="#">Tuyển Việt Nam thắng đậm trong trận giao hữu</a></h3>
                        <p>Đội tuyển Việt Nam đã thể hiện phong độ xuất sắc với chiến thắng 4-0 trước đối thủ...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
                <article class="news-item">
                    <img src="https://picsum.photos/id/1022/300/200" alt="Tin Văn hóa">
                    <div class="news-content">
                        <h3><a href="#">Lễ hội truyền thống thu hút hàng ngàn du khách</a></h3>
                        <p>Lễ hội văn hóa tại Huế đã diễn ra sôi nổi với nhiều hoạt động đặc sắc...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
            </section>

            <!-- Center Column: Reporter's News Management -->
            <section class="center-col">
                <h2>Quản lý tin tức của bạn</h2>
                <div class="action-bar">
                    <a href="edit_news.jsp" class="add-news-btn">Thêm tin mới</a>
                </div>
                <table class="news-table">
                    <thead>
                        <tr>
                            <th>Tiêu đề</th>
                            <th>Loại tin</th>
                            <th>Ngày đăng</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Công nghệ AI thay đổi cuộc sống</td>
                            <td>Công nghệ</td>
                            <td>28/09/2025</td>
                            <td>
                                <a href="edit_news.jsp?id=1" class="edit-btn">Sửa</a>
                                <a href="delete_news.jsp?id=1" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa tin này?')">Xóa</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Lễ hội truyền thống tại Huế</td>
                            <td>Văn hóa</td>
                            <td>28/09/2025</td>
                            <td>
                                <a href="edit_news.jsp?id=2" class="edit-btn">Sửa</a>
                                <a href="delete_news.jsp?id=2" class="delete-btn" onclick="return confirm('Bạn có chắc muốn xóa tin này?')">Xóa</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <!-- Right Column: Sidebar -->
            <aside class="right-col">
                <div class="box newsletter">
                    <h3>Đăng ký nhận bản tin</h3>
                    <p>Để lại email để nhận các bản tin mới nhất từ ABC News!</p>
                    <form id="newsletter-form" action="subscribe" method="post" onsubmit="return validateNewsletter()">
                        <div class="form-group">
                            <label for="newsletter-email">Email</label>
                            <input type="email" id="newsletter-email" name="email" placeholder="Nhập email của bạn" required>
                        </div>
                        <button type="submit" class="submit-btn">Đăng ký</button>
                    </form>
                    <p id="newsletter-error" class="error-message" style="display: none;"></p>
                </div>
                <div class="box">
                    <h3>Tin được xem nhiều</h3>
                    <ul>
                        <li><span class="number">1</span><a href="#">Bản tin số 1</a></li>
                        <li><span class="number">2</span><a href="#">Bản tin số 2</a></li>
                        <li><span class="number">3</span><a href="#">Bản tin số 3</a></li>
                        <li><span class="number">4</span><a href="#">Bản tin số 4</a></li>
                        <li><span class="number">5</span><a href="#">Bản tin số 5</a></li>
                    </ul>
                </div>
                <div class="box">
                    <h3>Tin mới nhất</h3>
                    <ul>
                        <li><span class="number">1</span><a href="#">Tin mới 1</a></li>
                        <li><span class="number">2</span><a href="#">Tin mới 2</a></li>
                        <li><span class="number">3</span><a href="#">Tin mới 3</a></li>
                        <li><span class="number">4</span><a href="#">Tin mới 4</a></li>
                        <li><span class="number">5</span><a href="#">Tin mới 5</a></li>
                    </ul>
                </div>
            </aside>
        </div>
    </div>

    <!-- Footer -->
    <footer class="site-footer">
        <div class="container">
            <p>&copy; 2025 ABC News. All rights reserved.</p>
            <div class="social-links">
                <a href="#">Facebook</a> | <a href="#">Twitter</a> | <a href="#">Instagram</a>
            </div>
            <p>Liên hệ: contact@abcnews.vn | Hotline: 0123 456 789</p>
        </div>
    </footer>

    <script>
        function validateNewsletter() {
            const emailInput = document.getElementById('newsletter-email');
            const errorMessage = document.getElementById('newsletter-error');
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!emailPattern.test(emailInput.value)) {
                errorMessage.textContent = 'Vui lòng nhập email hợp lệ!';
                errorMessage.style.display = 'block';
                return false;
            }

            errorMessage.style.display = 'none';
            alert('Đăng ký nhận bản tin thành công!');
            return true;
        }
    </script>
</body>
</html>