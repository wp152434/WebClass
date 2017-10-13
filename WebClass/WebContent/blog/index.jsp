<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Choichanhwan</title>
    <link rel="stylesheet" type="text/css" href="/WebClass/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/WebClass/css/index.css">
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script rel="script" type="text/javascript" src="/WebClass/js/bootstrap.js"></script>
    <script rel="script" type="text/javascript" src="/WebClass/js/index.js"></script>
</head>

<body>
<%
    UserVO vo = (UserVO) session.getAttribute("user");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="index.jsp">Home</a>
            <a class="nav-item nav-link" onclick="fnMove('profile')">About</a>
            <a class="nav-item nav-link" onclick="fnMove('motto')">Motto</a>
            <a class="nav-item nav-link" onclick="fnMove('hobby')">Hobby</a>
            <a class="nav-item nav-link" onclick="fnMove('dream')">Dream</a>
            <% if (vo == null) { %>
                <a class="nav-item nav-link" href="/WebClass/blog/sign.jsp">Sign in</a>
            <% } else { %>
                <a class="nav-item nav-link">Hi, <%=vo.getId()%></a>
                <a class="nav-item nav-link" href="/WebClass/bloglogout">log out</a>
            <% } %>
        </div>
    </div>
</nav>
<div class="hero">
    <div class="name">
        <h1 class="name-1">Choi</h1>
        <h1 class="name-2">Chan</h1>
        <h1 class="name-3">Hwan.</h1>
        <hr class="name-line">
    </div>
</div>
<div id="profile" class="profile-top"></div>
<div class="profile">
    <h4 class="contents">
        KoreaDigitalMedia HighSchool<br>
        IT Council Speaker<br>
        JNJ Communication's<br>
        Coin<br>
        Sullivan Project<br>
        more ->
    </h4>
</div>
<div id="motto"></div>
<div class="jumbotron jumbotron-fluid motto">
    <h1 class="motto-title">Motto</h1>
    <h1 class="motto-text"><a>"It's okay if it's not perfect."</a></h1>
</div>

<div id="hobby"></div>
<div class="jumbotron jumbotron-fluid hobby">
    <h1 class="hobby-title">Hobby</h1>
    <div class="row">
        <div class="col">
            <div class="card" style="width: 20rem;">
                <img class="card-img-top camera-img" src="/WebClass/assests/img/camera.jpg" alt="Card image cap">
                <div class="card-body"
                    <h4 class="card-title">Take pictures</h4>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 20rem;">
                <img class="card-img-top music-img" src="/WebClass/assests/img/music.jpg" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Listening to music</h4>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 20rem;">
                <img class="card-img-top" src="/WebClass/assests/img/codeing.jpg" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Coding</h4>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="dream"></div>
<div class="objective">
    <div class="objective-card">
        <h4 class="objective-contents">
            Server Developer<br>
            Start up<br>
            Speaking at a place like ted<br>
            Create Lab
        </h4>
    </div>
</div>
<div class="footer">
    <div class="container">
        <h1 class="footer-title">Contact Me</h1>
        <div class="footer-sub-titles">
            <p class="footer-contact"><a href="http://github.com/choich">Github</a> | <a href="https://www.facebook.com/choich00">Facebook</a> | <a href="http://choich.xyz/">Blog</a></p>
            <p class="footer-sub-title">Made by Choichanhwan</p>
        </div>
    </div>
</div>
</body>

</html>