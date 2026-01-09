@extends('frontend.layouts.master')

@section('title', 'Business Opportunity Survey')

@section('content')

<style>
  /* =========================
     Profile Login/Register (Only)
     ========================= */

  /* Page spacing (optional) */
  #primary { padding: 0; }
  #content.container { padding-top: 30px; padding-bottom: 30px; }

  /* Wrap both forms */
  .lp-content-area{
    display: flex;
    gap: 24px;
    align-items: stretch;
    justify-content: center;
    flex-wrap: wrap;
  }

  /* Shared card styles */
  .learn-press-form-login,
  .learn-press-form-register{
    flex: 1 1 420px;
    max-width: 560px;
    padding: 2rem;
    background-color: #0a0e23;
    border-radius: 16px;
    box-shadow: 0 12px 35px rgba(0,0,0,0.3);
    color: #fff;
    font-family: 'Poppins', sans-serif;
    text-align: center;
  }

  .learn-press-form-login h3,
  .learn-press-form-register h3{
    font-size: 30px;
    font-weight: 700;
    margin-bottom: 2rem;
    color: #fff;
  }

  /* Form fields */
  .learn-press-form-login .form-fields,
  .learn-press-form-register .form-fields{
    list-style: none;
    padding: 0;
    margin: 0;
  }

  .learn-press-form-login .form-field,
  .learn-press-form-register .form-field{
    margin-bottom: 1.2rem;
    text-align: left;
  }

  .learn-press-form-login label,
  .learn-press-form-register label{
    font-size: 16px;
    font-weight: 500;
    display: inline-block;
    margin-bottom: 6px;
  }

  .learn-press-form-login input[type="text"],
  .learn-press-form-login input[type="password"],
  .learn-press-form-register input[type="text"],
  .learn-press-form-register input[type="password"]{
    width: 100%;
    padding: 0.9rem 1rem;
    font-size: 1rem;
    border-radius: 8px;
    border: none;
    outline: none;
    background-color: #fff;
    color: #000;
  }

  .learn-press-form-login input::placeholder,
  .learn-press-form-register input::placeholder{
    color: #888;
  }

  /* Remember me */
  .learn-press-form-login input[type="checkbox"]{
    transform: scale(1.2);
    margin-right: 6px;
  }

  /* Buttons */
  .learn-press-form-login button[type="submit"],
  .learn-press-form-register button[type="submit"]{
    width: 100%;
    font-weight: 700;
    background-color: #84d195;
    border: none;
    color: #000;
    padding: 12px 20px;
    font-size: 16px;
    line-height: 19px;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.25s ease;
    margin-top: 1rem;
  }

  .learn-press-form-login button[type="submit"]:hover,
  .learn-press-form-register button[type="submit"]:hover{
    background-color: #0a0e23;
    border: 2px solid #fff;
    color: #fff;
  }

  /* Links */
  .learn-press-form-login a{
    display: inline-block;
    margin-top: 1.5rem;
    color: #fff;
    font-size: 16px;
    text-decoration: none;
  }

  .learn-press-form-login a:hover{
    text-decoration: underline;
  }

  /* Required mark */
  .learn-press-form-login .required,
  .learn-press-form-register .required{
    color: red;
  }

  /* Register fields layout (2 columns for first 2 fields on desktop) */
  .learn-press-form-register .form-fields{
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
  }
  .learn-press-form-register .form-fields li.form-field{
    flex: 1 1 100%;
  }
  .learn-press-form-register .form-fields li.form-field:nth-child(1),
  .learn-press-form-register .form-fields li.form-field:nth-child(2){
    flex: 1 1 calc(50% - 0.5rem);
  }

  /* Mobile: stack everything */
  @media (max-width: 768px){
    .lp-content-area{ flex-direction: column; }
    .learn-press-form-login,
    .learn-press-form-register{ max-width: 100%; }
    .learn-press-form-register .form-fields li.form-field:nth-child(1),
    .learn-press-form-register .form-fields li.form-field:nth-child(2){
      flex: 1 1 100%;
    }
  }
</style>

<div class="tf-page-title">
  <div class="content-wrap">
    <div class="bg-image">
      <div class="rellax" data-rellax-speed="-10">
        <img src="https://byteved.com/vincent-dev/wp-content/themes/vincenttheme/./images/page-title/page-title.jpg" alt="">
      </div>
    </div>
    <div class="tf-overlay"></div>
    <div class="content">
      <div class="tf-container">
        <div class="row">
          <div class="col-lg-12">
            <p class="title">Profile</p>
            <div class="breadcrums">
              <a href="https://byteved.com/vincent-dev">Home</a>
              <div class="icon"><i class="icon-chevron-r"></i></div>
              <a class="current">Profile</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="primary" class="container-fluid">
  <div id="content" class="container" role="main">

    <article id="post-125" class="post-125 page type-page status-publish hentry pmpro-has-access">
      <div class="entry-content">

        <div class="learnpress">
          <div id="learn-press-profile" class="lp-user-profile current-user guest">
            <div class="lp-content-area">

              <div class="learn-press-form-login learn-press-form">
                <h3>Login</h3>

                <form name="learn-press-login" method="post" action="">
                  <ul class="form-fields">
                    <li class="form-field">
                      <label for="username">Username or email&nbsp;<span class="required">*</span></label>
                      <input type="text" name="username" id="username" placeholder="Email or username" autocomplete="username" />
                    </li>
                    <li class="form-field">
                      <label for="password">Password&nbsp;<span class="required">*</span></label>
                      <input type="password" name="password" id="password" placeholder="Password" autocomplete="current-password" />
                    </li>
                  </ul>

                  <p>
                    <label>
                      <input type="checkbox" name="rememberme" />
                      Remember me
                    </label>
                  </p>

                  <p>
                    <input type="hidden" name="learn-press-login-nonce" value="2a688e8449">
                    <button type="submit">Login</button>
                  </p>

                  <p>
                    <a href="https://byteved.com/vincent-dev/my-account/lost-password/">Lost your password?</a>
                  </p>
                </form>
              </div>

              <div class="learn-press-form-register learn-press-form">
                <h3>Register</h3>

                <form name="learn-press-register" method="post" action="">
                  <ul class="form-fields">
                    <li class="form-field">
                      <label for="reg_email">Email address&nbsp;<span class="required">*</span></label>
                      <input id="reg_email" name="reg_email" type="text" placeholder="Email" autocomplete="email" value="">
                    </li>
                    <li class="form-field">
                      <label for="reg_username">Username&nbsp;<span class="required">*</span></label>
                      <input id="reg_username" name="reg_username" type="text" placeholder="Username" autocomplete="username" value="">
                    </li>
                    <li class="form-field">
                      <label for="reg_password">Password&nbsp;<span class="required">*</span></label>
                      <input id="reg_password" name="reg_password" type="password" placeholder="Password" autocomplete="new-password">
                    </li>
                    <li class="form-field">
                      <label for="reg_password2">Confirm Password&nbsp;<span class="required">*</span></label>
                      <input id="reg_password2" name="reg_password2" type="password" placeholder="Password" autocomplete="off">
                    </li>
                    <li class="form-field">
                      <label for="reg_first_name">First name</label>
                      <input id="reg_first_name" name="reg_first_name" type="text" placeholder="First name" value="">
                    </li>
                    <li class="form-field">
                      <label for="reg_last_name">Last name</label>
                      <input id="reg_last_name" name="reg_last_name" type="text" placeholder="Last name" value="">
                    </li>
                  </ul>

                  <p>
                    <input type="hidden" id="learn-press-register-nonce" name="learn-press-register-nonce" value="f23aa8eb85" />
                    <input type="hidden" name="_wp_http_referer" value="/vincent-dev/profile/" />
                    <button type="submit">Register</button>
                  </p>
                </form>
              </div>

            </div>
          </div>
        </div>

        <br />
        <p>Please <a href="https://byteved.com/vincent-dev/wp-login.php">login</a> to view the student portal.</p>
        <br />
        <img decoding="async" class="alignnone size-medium wp-image-1463"
             src="https://byteved.com/vincent-dev/wp-content/uploads/2025/09/dashboard-logout-scaled.jpg"
             alt="Profile Info" />

      </div>
    </article>

  </div>
</div>
@endsection
