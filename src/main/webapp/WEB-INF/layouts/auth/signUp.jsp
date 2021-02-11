

<div class="col-md-3 register-left">
    <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
    <h3>Welcome</h3>
    <p>AB Bank,Online Banking System</p>
<!--    <input type="submit" name="" value="Login"/><br/>-->
<button style="border-radius: 25px ;width: 100px;background: darkmagenta;height: 35px;outline: none;border: none">  <a href="loginView" style="text-decoration: none;color:white" > login </a></button>
</div>
<div class="col-md-9 register-right">
    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Sign Up</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Admin</a>
        </li>
    </ul>
    <form method="get" action="registration">
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <h3 class="register-heading">Apply as a User</h3>
            <div class="row register-form">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" name="fname" class="form-control" placeholder="First Name " />
                    </div>
                    <div class="form-group">
                        <input type="text" name="lname" class="form-control" placeholder="Last Name " />
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" placeholder="Password "  />
                    </div>
                    <div class="form-group">
                        <input type="password" name="confirmpassword" class="form-control"  placeholder="Confirm Password *" value="" />
                    </div>
<!--                    <div class="form-group">
                        <div class="maxl">
                            <label class="radio inline"> 
                                <input type="radio" name="gender" value="male" checked>
                                <span> Male </span> 
                            </label>
                            <label class="radio inline"> 
                                <input type="radio" name="gender" value="female">
                                <span>Female </span> 
                            </label>
                        </div>
                    </div>-->
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Your Email"  />
                    </div>
                    <div class="form-group">
                        <input type="text" maxlength="10" name="phone" class="form-control" placeholder="Your Phone" value="" />
                    </div>
                    <div class="form-group">
                        <select class="form-control" name="securityquestion">
                            <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                            <option>What is your Birthdate?</option>
                            <option>What is Your old Phone Number</option>
                            <option>What is your Pet Name?</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Enter Your Answer" value="" />
                    </div>
                    <input type="submit" class="btnRegister"  value="Register"/>
                </div>
            </div>
        </div>
        <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <h3  class="register-heading">Apply as a Hirer</h3>
            <div class="row register-form">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" name="fname" class="form-control" style="margin-bottom: 10px; " placeholder="First Name"  />
                    </div>
                    <div class="form-group">
                        <input type="text" name="lname" class="form-control" placeholder="Last Name "  />
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Email"  />
                    </div>
                    <div class="form-group">
                        <input type="text" maxlength="10" name="phone" class="form-control" placeholder="Phone" value="" />
                    </div>


                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password " />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Confirm Password "  />
                    </div>
                    <div class="form-group">
                        <select class="form-control">
                            <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                            <option>What is your Birthdate?</option>
                            <option>What is Your old Phone Number</option>
                            <option>What is your Pet Name?</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Answer " />
                    </div>
                    <button  type="submit"> <a href="registration">Registration</a></button>
                </div>
            </div>
        </div>
    </div>
    </form>
   
</div>


