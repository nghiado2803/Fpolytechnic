<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ABC News - Trang tin tức hàng đầu Việt Nam, cập nhật tin tức nhanh chóng, chính xác và đa chiều.">
    <meta name="keywords" content="tin tức, Việt Nam, văn hóa, pháp luật, thể thao, ABC News">
    <meta name="author" content="ABC News">
    <title>ABC News - Trang chủ</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Open+Sans:wght@400;600&display=swap">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Header -->
    <header class="site-header">
        <div class="container">
            <div class="logo">ABC <span>News</span></div>
            <nav class="menu">
                <a href="index.jsp" class="active">Trang chủ</a>
                <a href="news_list.jsp?type=vanhoa">Văn hóa</a>
                <a href="news_list.jsp?type=phapluat">Pháp luật</a>
                <a href="news_list.jsp?type=thethao">Thể thao</a>
            </nav>
            <div class="header-actions">
                <input type="text" placeholder="Tìm kiếm..." class="search-bar">
                <button class="login-btn" onclick="showModal('login-modal')">Đăng nhập</button>
                <button class="register-btn" onclick="showModal('register-modal')">Đăng ký</button>
            </div>
        </div>
    </header>

    <!-- Login Modal -->
    <div id="login-modal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('login-modal')">&times;</span>
            <h2>Đăng nhập</h2>
            <p>Đăng nhập để truy cập tin tức cá nhân hóa và nhiều tính năng hơn.</p>
            <form action="login" method="post">
                <div class="form-group">
                    <label for="login-email">Email</label>
                    <input type="email" id="login-email" name="email" placeholder="Nhập email" required>
                </div>
                <div class="form-group">
                    <label for="login-password">Mật khẩu</label>
                    <input type="password" id="login-password" name="password" placeholder="Nhập mật khẩu" required>
                </div>
                <button type="submit" class="submit-btn">Đăng nhập</button>
            </form>
            <p class="modal-link">Chưa có tài khoản? <a onclick="switchModal('login-modal', 'register-modal')">Đăng ký ngay</a></p>
        </div>
    </div>

    <!-- Register Modal -->
    <div id="register-modal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal('register-modal')">&times;</span>
            <h2>Đăng ký tài khoản</h2>
            <p>Tạo tài khoản để nhận tin tức mới nhất và trải nghiệm cá nhân hóa từ ABC News.</p>
            <form action="register" method="post">
                <div class="form-group">
                    <label for="fullName">Họ và tên</label>
                    <input type="text" id="fullName" name="fullName" placeholder="Nhập họ và tên" required>
                </div>
                <div class="form-group">
                    <label for="register-email">Email</label>
                    <input type="email" id="register-email" name="email" placeholder="Nhập email" required>
                </div>
                <div class="form-group">
                    <label for="register-password">Mật khẩu</label>
                    <input type="password" id="register-password" name="password" placeholder="Nhập mật khẩu" required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Xác nhận mật khẩu</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Xác nhận mật khẩu" required>
                </div>
                <button type="submit" class="submit-btn">Đăng ký</button>
            </form>
            <p class="modal-link">Đã có tài khoản? <a onclick="switchModal('register-modal', 'login-modal')">Đăng nhập ngay</a></p>
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

            <!-- Center Column: Featured News -->
            <section class="center-col">
                <h2>Bản tin mới nhất</h2>
                <article class="featured">
                    <img src="https://picsum.photos/id/1019/500/300" alt="Tin nổi bật">
                    <div class="featured-content">
                        <h3><a href="#">Lễ hội Trung thu rực rỡ ở Hà Nội</a></h3>
                        <p>Hàng nghìn người dân và du khách đã tham gia không khí lễ hội Trung thu tại phố cổ Hà Nội...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
                <article class="news-item">
                    <img src="https://picsum.photos/id/1020/400/250" alt="Tin kinh tế">
                    <div class="news-content">
                        <h3><a href="#">Kinh tế Việt Nam tăng trưởng ổn định trong quý 3</a></h3>
                        <p>GDP Việt Nam ghi nhận mức tăng trưởng 6.5% trong quý 3, nhờ vào sự phục hồi của ngành xuất khẩu...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
                <article class="news-item">
                    <img src="https://picsum.photos/id/1021/400/250" alt="Tin công nghệ">
                    <div class="news-content">
                        <h3><a href="#">Ứng dụng công nghệ 5G trong y tế thông minh</a></h3>
                        <p>Các bệnh viện lớn tại Việt Nam bắt đầu triển khai 5G để hỗ trợ phẫu thuật từ xa...</p>
                        <span class="news-meta">Đăng ngày: 28/09/2025</span>
                    </div>
                </article>
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
                <div class="box">
                    <h3>Tin bạn đã xem</h3>
                    <ul>
                        <li><span class="number">1</span><a href="#">Đã xem 1</a></li>
                        <li><span class="number">2</span><a href="#">Đã xem 2</a></li>
                        <li><span class="number">3</span><a href="#">Đã xem 3</a></li>
                        <li><span class="number">4</span><a href="#">Đã xem 4</a></li>
                        <li><span class="number">5</span><a href="#">Đã xem 5</a></li>
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
        function showModal(modalId) {
            document.getElementById(modalId).style.display = 'flex';
        }

        function closeModal(modalId) {
            document.getElementById(modalId).style.display = 'none';
        }

        function switchModal(currentModalId, targetModalId) {
            closeModal(currentModalId);
            showModal(targetModalId);
        }

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