<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Choichanhwan</title>
    <link rel="stylesheet" type="text/css" href="/WebClass/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/WebClass/css/sign.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script rel="script" type="text/javascript" src="/WebClass/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="half">
        <h1>ChoiChanhwan</h1>
        <div class="tabs">
            <span class="tab signin active"><a href="#signin">Sign in</a></span>
            <span class="tab signup"><a href="#signup">Sign up</a></span>
        </div>
        <%
            String id = request.getParameter("id") == null ? "" : request.getParameter("id");
            String password = request.getParameter("password") == null ? "" : request.getParameter("password");
        %>
        <div class="content">
            <div class="signin-cont cont">
                <form action="/WebClass/bloglogin" method="post" enctype="multipart/form-data" id="signin">
                    <input type="email" name="id" id="id" class="inpt" required="required" placeholder="Username" value="<%=id%>">
                    <label for="id">Username</label>
                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password" value="<%=password%>">
                    <label for="password">Your password</label>
                    <div class="submit-wrap">
                        <input id="signinBtn" type="submit" value="Sign in" class="submit" data-toggle="modal" data-target="#signModal">
                    </div>
                </form>
            </div>
            <div class="signup-cont cont">
                <form action="http://httpbin.org/post" method="post" enctype="multipart/form-data" id="signup">
                    <div class="form-group">
                        <input type="radio" name="grade" id="grade1" value="1" required>1 학년
                        <input type="radio" name="grade" id="grade2" value="2">2 학년
                        <input type="radio" name="grade" id="grade3" value="3">3 학년
                    </div>
                    <div class="form-group">
                        <label for="class">Class select</label>
                        <select class="form-control" id="class" required>
                            <option value="">--반--</option>
                            <option value="1">1 반</option>
                            <option value="2">2 반</option>
                            <option value="3">3 반</option>
                            <option value="4">4 반</option>
                            <option value="5">5 반</option>
                            <option value="6">6 반</option>
                        </select>
                    </div>
                    <input type="number" name="number" id="number" class="inpt" required="required" placeholder="Your number">
                    <label for="number">Your number</label>
                    <input type="text" name="name" id="name" class="inpt" placeholder="Your name" required>
                    <label for="name">Your name</label>
                    <div class="submit-wrap">
                        <input id="signupBtn" type="button" value="Sign up" class="submit">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="half bg"></div>
</div>

<%@ include file="modal.jsp" %>

<script>
    console.log("<%=request.getAttribute("msg")%>");
    <% if("error".equals(request.getAttribute("msg"))) { %>
        alert("error");
        console.log("error");
        var myModal = $('#myModal');
        myModal.find('.modal-title')e.text('sign in error');
        myModal.find('.modal-body').text('Wrong id.');
        myModal.modal();
    <% } else if ("success".equals(request.getAttribute("msg"))) { %>
        alert("success");
        console.log("success");
        location.href("/WebClass/blog/index.jsp");
    <% }%>
</script>
<script rel="script" type="text/javascript" src="/WebClass/js/sign.js?ver=0.0.3"></script>
</body>

</html>