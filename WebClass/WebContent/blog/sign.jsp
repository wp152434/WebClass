<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Choichanhwan</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/sign.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script rel="script" type="text/javascript" src="../project/WebContent/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="half">
        <h1>ChoiChanhwan</h1>
        <div class="tabs">
            <span class="tab signin active"><a href="#signin">Sign in</a></span>
            <span class="tab signup"><a href="#signup">Sign up</a></span>
        </div>
        <div class="content">
            <div class="signin-cont cont">
                <form action="../login" method="post" enctype="multipart/form-data" id="signin">
                    <input type="email" name="username" id="id" class="inpt" required="required" placeholder="Username">
                    <label for="id">Username</label>
                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
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

<div class="modal fade" id="signModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTitle">modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="modal-text"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="submit-btn" data-dismiss="modal" aria-label="Close">OK</button>
            </div>
        </div>
    </div>
</div>

<script rel="script" type="text/javascript" src="../js/sign.js?ver=0.0.3"></script>
</body>

</html>