@extends('frontend.layouts.master')

@section('title', 'About')

@section('content')
<!-- Page-title -->

<style id='wp-emoji-styles-inline-css'>

	img.wp-smiley, img.emoji {
		display: inline !important;
		border: none !important;
		box-shadow: none !important;
		height: 1em !important;
		width: 1em !important;
		margin: 0 0.07em !important;
		vertical-align: -0.1em !important;
		background: none !important;
		padding: 0 !important;
	}
/*# sourceURL=wp-emoji-styles-inline-css */
</style>
<link rel='stylesheet' id='wp-block-library-css' href='https://byteved.com/vincent-dev/wp-includes/css/dist/block-library/style.min.css?ver=6.9' media='all' />
<link rel='stylesheet' id='wc-blocks-style-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks.css?ver=wc-9.9.6' media='all' />
<style id='global-styles-inline-css'>
:root{--wp--preset--aspect-ratio--square: 1;--wp--preset--aspect-ratio--4-3: 4/3;--wp--preset--aspect-ratio--3-4: 3/4;--wp--preset--aspect-ratio--3-2: 3/2;--wp--preset--aspect-ratio--2-3: 2/3;--wp--preset--aspect-ratio--16-9: 16/9;--wp--preset--aspect-ratio--9-16: 9/16;--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #fff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--dark-gray: #141412;--wp--preset--color--red: #bc360a;--wp--preset--color--medium-orange: #db572f;--wp--preset--color--light-orange: #ea9629;--wp--preset--color--yellow: #fbca3c;--wp--preset--color--dark-brown: #220e10;--wp--preset--color--medium-brown: #722d19;--wp--preset--color--light-brown: #eadaa6;--wp--preset--color--beige: #e8e5ce;--wp--preset--color--off-white: #f7f5e7;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgb(6,147,227) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgb(252,185,0) 0%,rgb(255,105,0) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgb(255,105,0) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--font-family--inter: "Inter", sans-serif;--wp--preset--font-family--cardo: Cardo;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);--wp--preset--shadow--outlined: 6px 6px 0px -3px rgb(255, 255, 255), 6px 6px rgb(0, 0, 0);--wp--preset--shadow--crisp: 6px 6px 0px rgb(0, 0, 0);}:where(.is-layout-flex){gap: 0.5em;}:where(.is-layout-grid){gap: 0.5em;}body .is-layout-flex{display: flex;}.is-layout-flex{flex-wrap: wrap;align-items: center;}.is-layout-flex > :is(*, div){margin: 0;}body .is-layout-grid{display: grid;}.is-layout-grid > :is(*, div){margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}:where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}
/*# sourceURL=global-styles-inline-css */
</style>

<style id='classic-theme-styles-inline-css'>
/*! This file is auto-generated */
.wp-block-button__link{color:#fff;background-color:#32373c;border-radius:9999px;box-shadow:none;text-decoration:none;padding:calc(.667em + 2px) calc(1.333em + 2px);font-size:1.125em}.wp-block-file__button{background:#32373c;color:#fff;text-decoration:none}
/*# sourceURL=/wp-includes/css/classic-themes.min.css */
</style>
<link rel='stylesheet' id='contact-form-7-css' href='https://byteved.com/vincent-dev/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=6.0.6' media='all' />
<link rel='stylesheet' id='pmpro_frontend_base-css' href='https://byteved.com/vincent-dev/wp-content/plugins/paid-memberships-pro/css/frontend/base.css?ver=3.3.2' media='all' />
<link rel='stylesheet' id='pmpro_frontend_variation_1-css' href='https://byteved.com/vincent-dev/wp-content/plugins/paid-memberships-pro/css/frontend/variation_1.css?ver=3.3.2' media='all' />
<link rel='stylesheet' id='select2-css' href='https://byteved.com/vincent-dev/wp-content/plugins/paid-memberships-pro/css/select2.min.css?ver=4.1.0-beta.0' media='screen' />
<link rel='stylesheet' id='woocommerce-layout-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=9.9.6' media='all' />
<link rel='stylesheet' id='woocommerce-smallscreen-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=9.9.6' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='woocommerce-general-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=9.9.6' media='all' />
<style id='woocommerce-inline-inline-css'>
.woocommerce form .form-row .required { visibility: visible; }
/*# sourceURL=woocommerce-inline-inline-css */
</style>
<link rel='stylesheet' id='brands-styles-css' href='https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/css/brands.css?ver=9.9.6' media='all' />
<link rel='stylesheet' id='twentythirteen-fonts-css' href='https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A300%2C400%2C700%2C300italic%2C400italic%2C700italic%7CBitter%3A400%2C700&#038;subset=latin%2Clatin-ext&#038;display=fallback' media='all' />
<link rel='stylesheet' id='twentythirteen-style-css' href='https://byteved.com/vincent-dev/wp-content/themes/vincenttheme/style.css?ver=20201208' media='all' />
<link rel='stylesheet' id='dashicons-css' href='https://byteved.com/vincent-dev/wp-includes/css/dashicons.min.css?ver=6.9' media='all' />
<link rel='stylesheet' id='popup-maker-site-css' href='//byteved.com/vincent-dev/wp-content/uploads/pum/pum-site-styles.css?generated=1755345635&#038;ver=1.20.5' media='all' />
<link rel='stylesheet' id='learnpress-widgets-css' href='https://byteved.com/vincent-dev/wp-content/plugins/learnpress/assets/css/widgets.min.css?ver=4.2.8.4' media='all' />
<script src="https://byteved.com/vincent-dev/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" id="jquery-core-js"></script>
<script src="https://byteved.com/vincent-dev/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js"></script>
<script src="https://byteved.com/vincent-dev/wp-content/plugins/paid-memberships-pro/js/select2.min.js?ver=4.1.0-beta.0" id="select2-js" defer data-wp-strategy="defer"></script>
<script src="https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.9.9.6" id="jquery-blockui-js" defer data-wp-strategy="defer"></script>
<script id="wc-add-to-cart-js-extra">
var wc_add_to_cart_params = {"ajax_url":"/vincent-dev/wp-admin/admin-ajax.php","wc_ajax_url":"/vincent-dev/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"https://byteved.com/vincent-dev/cart/","is_cart":"","cart_redirect_after_add":"no"};
//# sourceURL=wc-add-to-cart-js-extra
</script>
<script src="https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=9.9.6" id="wc-add-to-cart-js" defer data-wp-strategy="defer"></script>
<script src="https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4-wc.9.9.6" id="js-cookie-js" defer data-wp-strategy="defer"></script>
<script id="woocommerce-js-extra">
var woocommerce_params = {"ajax_url":"/vincent-dev/wp-admin/admin-ajax.php","wc_ajax_url":"/vincent-dev/?wc-ajax=%%endpoint%%","i18n_password_show":"Show password","i18n_password_hide":"Hide password"};
//# sourceURL=woocommerce-js-extra
</script>
<script src="https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=9.9.6" id="woocommerce-js" defer data-wp-strategy="defer"></script>
<script src="https://byteved.com/vincent-dev/wp-content/plugins/learnpress/assets/js/dist/loadAJAX.min.js?ver=4.2.8.4" id="lp-load-ajax-js" async data-wp-strategy="async"></script>
<link rel="https://api.w.org/" href="https://byteved.com/vincent-dev/wp-json/" /><link rel="alternate" title="JSON" type="application/json" href="https://byteved.com/vincent-dev/wp-json/wp/v2/pages/15" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://byteved.com/vincent-dev/xmlrpc.php?rsd" />
<meta name="generator" content="WordPress 6.9" />
<meta name="generator" content="WooCommerce 9.9.6" />
<link rel='shortlink' href='https://byteved.com/vincent-dev/?p=15' />

	<script type="text/javascript">var ajaxurl = 'https://byteved.com/vincent-dev/wp-admin/admin-ajax.php';</script>

<style id="pmpro_colors">:root {
	--pmpro--color--base: #ffffff;
	--pmpro--color--contrast: #222222;
	--pmpro--color--accent: #0c3d54;
	--pmpro--color--accent--variation: hsl( 199,75%,28.5% );
	--pmpro--color--border--variation: hsl( 0,0%,91% );
}</style>	<noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
	<link rel="preconnect" href="//code.tidio.co"><style class='wp-fonts-local'>
@font-face{font-family:Inter;font-style:normal;font-weight:300 900;font-display:fallback;src:url('https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/fonts/Inter-VariableFont_slnt,wght.woff2') format('woff2');font-stretch:normal;}
@font-face{font-family:Cardo;font-style:normal;font-weight:400;font-display:fallback;src:url('https://byteved.com/vincent-dev/wp-content/plugins/woocommerce/assets/fonts/cardo_normal_400.woff2') format('woff2');}
</style>
<link rel="icon" href="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/cropped-logo1-32x32.jpg" sizes="32x32" />
<link rel="icon" href="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/cropped-logo1-192x192.jpg" sizes="192x192" />
<link rel="apple-touch-icon" href="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/cropped-logo1-180x180.jpg" />
<meta name="msapplication-TileImage" content="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/cropped-logo1-270x270.jpg" />
		<style id="wp-custom-css">
			body.blog.logged-in.admin-bar.wp-embed-responsive.wp-theme-vincenttheme.single-author.sidebar.customize-support .row{
  padding-bottom:0px !important;
}
body.home.wp-singular.page-template.page-template-front-page  section.s-new-blog.tf-spacing-1 .entry-image.mb-30.hover-1.hover-14 img {
    width: 100%;
    height: 300px !important;
   max-height: 350px !important;
  object-fit: cover !important;
}
body.blog.wp-embed-responsive.wp-theme-vincenttheme.user-registration-page.single-author.sidebar section.s-new-blog.tf-spacing-1{
  padding-bottom:0px !important
}
section.s-new-blog.tf-spacing-1.brands-footer-section{
  padding-bottom:0px !important;
}
div#loginModal div#user-registration {
    padding: 15px;
}
i.fa.fa-user{
  color:#fff !important;
}

/*8june 2025*/
body.wp-singular.page-template-default.page.page-id-125 .course-readmore a{
  padding: 12px 21px 12px 20px;
    font-size: 16px;
    line-height: 19px;
  background-color:#84d195 !important;
  font-weight: 700;
  color:#000 !important

}
body.wp-singular.page-template-default.page.page-id-125 .course-readmore a:hover{
  background-color:#051229 !important;
  color:#fff !important;
}

body.wp-singular.page-template-default.page.page-id-125 article#post-125{
  padding-top:30px;
  
}
}
body.wp-singular.page-template-default.page.page-id-125 .lp-content-area.lp-profile-content-area{
  padding-top:20px;
}
body.wp-singular.page-template-default.page.page-id-125  .lp_profile_course_progress__nav button.lp-button{
  background-color:#051229 !important;
  color:#fff !important;
   font-size: 16px;
    line-height: 19px;
  font-weight: 700;
}
body.wp-singular.page-template-default.page.page-id-125  .lp_profile_course_progress__nav button.lp-button:hover{
   font-size: 16px;
    line-height: 19px;
  background-color:#84d195 !important;
  font-weight: 700;
  color:#000 !important;
  border:1px solid #000;
}





.learn-press-form-login {
  max-width: 500px;
  margin: 5rem auto;
  padding: 2rem;
  background-color: #0a0e23; /* dark blue background */
  border-radius: 16px;
  box-shadow: 0 12px 35px rgba(0, 0, 0, 0.3);
  color: #fff;
  font-family: 'Poppins', sans-serif;
  text-align: center;
}

.learn-press-form-login h3 {
  font-size: 30px;
  font-weight: 700;
  margin-bottom: 2rem;
  color: #fff;
}

/* Form fields */
.learn-press-form-login .form-fields {
  list-style: none;
  padding: 0;
  margin: 0;
}

.learn-press-form-login .form-field {
  margin-bottom: 1.2rem;
  text-align: left;
}
.learn-press-form-login input[type="text"],
.learn-press-form-login input[type="password"] {
  width: 100%;
  padding: 0.9rem 1rem;
  font-size: 1rem;
  border-radius: 8px;
  border: none;
  outline: none;
  background-color: #fff;
  color: #000;
}

.learn-press-form-login input::placeholder {
  color: #888;
}

/* Login button */
.learn-press-form-login button[type="submit"] {
  width: 100%;
  font-weight:700 !important;
  background-color:#84d195;
  border: none;
  color: #000;
 padding: 12px 21px 12px 20px;
    font-size: 16px;
    line-height: 19px;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  margin-top: 1rem;
}
.learn-press-form-login button[type="submit"]:hover {
  background-color: #0a0e23 !important;
    border: 2px solid #fff;
    font-size: 18px !important;
    color: #fff !important;
    padding: 12px 21px 12px 20px;
}

.learn-press-form-login button[type="submit"]:hover {
  background-color: #0056d2;
}

/* Remember me */
.learn-press-form-login input[type="checkbox"] {
  transform: scale(1.2);
  margin-right: 6px;
}

.learn-press-form-login label {
  font-size: 16px;
  font-weight: 500;
}

/* Forgot password & signup links */
.learn-press-form-login a {
  display: inline-block;
  margin-top: 1.5rem;
  color: #fff;
  font-size: 16px;
  text-decoration: none;
}

.learn-press-form-login a:hover {
  text-decoration: underline;
}

.learn-press-form-login .required {
  color: red;
}







.learn-press-form-register {
  max-width: 600px;
  margin: 5rem auto;
  padding: 2rem;
  background-color: #0a0e23; /* dark background */
  border-radius: 16px;
  box-shadow: 0 12px 35px rgba(0, 0, 0, 0.3);
  font-weight:700 !important
  color: #fff;
  font-family: 'Poppins', sans-serif;
  text-align: center;
}

 .learn-press-form-register h3 {
  font-size: 30px;
  font-weight: 700;
  margin-bottom: 2rem;
  color: #fff;
}

/* Form fields */
 .learn-press-form-register .form-fields {
  list-style: none;
  padding: 0;
  margin: 0;
}
.learn-press-form-register .form-field {
  margin-bottom: 1.2rem;
  text-align: left;
}
body.wp-singular.page-template-default.page.page-id-12 .lp-user-profile.guest .lp-content-area {
    display: flex;
    align-items: center !important;
}
 .learn-press-form-register input[type="text"],
.learn-press-form-register input[type="password"] {
  width: 100%;
  padding: 0.9rem 1rem;
  font-size: 18px;
  border-radius: 8px;
  border: none;
  font-weight:700;
  outline: none;
  background-color: #fff;
  color: #000;
}
 .learn-press-form-register input::placeholder {
  color: #888;
}

/* Register button */
 .learn-press-form-register button[type="submit"] {
  width: 100%;
  padding: 0.9rem;
  background-color:#84d195;
  border: none;
  color: #000;
  font-size: 16px;
  padding: 12px 21px 12px 20px;
    font-size: 18px;
    line-height: 19px;
  font-weight: 700 !important;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  margin-top: 1rem;
}
 .learn-press-form-register button[type="submit"]:hover{
  width: 100%;
  padding: 12px 21px 12px 20px !important;
  background-color:#84d195 !important;
  font-weight:700 !important;
  border: none;
  color: #000 !important;
  font-size: 16px;
}
 .learn-press-form-register button[type="submit"]:hover {
  background-color:#0a0e23 !important;
    border: 2px solid #fff;
  font-size:16px !important;
    color: #fff !important;
    padding: 12px 21px 12px 20px !important;
}

 .learn-press-form-register label {
  font-size: 0.95rem;
  font-weight: 600;
}
 .learn-press-form-register .required {
  color: red;
}
 .learn-press-form-register .form-fields {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
}
 .learn-press-form-register .form-fields li.form-field {
  flex: 1 1 100%;
}

/* Make the first two fields (Email and Username) share the row */
.learn-press-form-register .form-fields li.form-field:nth-child(1),
.learn-press-form-register .form-fields li.form-field:nth-child(2) {
  flex: 1 1 calc(50% - 0.5rem); /* half width minus half the gap */
}


body.archive.tax-course_category.term-podcast-course-and-ebook-reviews .course-readmore a{
  padding: 12px 21px 12px 20px;
    font-size: 18px;
    line-height: 19px;
    background-color: #84d195 !important;
    font-weight: 700;
    color: #000 !important;
}
body.archive.tax-course_category.term-podcast-course-and-ebook-reviews .course-readmore a:hover{
  padding: 12px 21px 12px 20px;
    font-size: 18px;
    line-height: 19px;
   background-color: #051229 !important;
    color: #fff !important;
    font-weight: 700;
}
.learn-press-courses .course-price .free {
    color: #051229 !important;
  text-shadow: 1px 1px 2px #e7ba45;
}
.lp-courses-bar {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    background-color: #051229;
    padding: 15px 20px;
    border-radius: 10px;
    gap: 15px;
}

/* Search Form */
.search-courses {
    display: flex;
    align-items: center;
    border: 2px solid #84d195;
    border-radius: 8px;
    background-color: #fff;
    max-width: 300px;
    flex: 1;
}

.search-courses input[type="search"] {
    padding: 10px 15px;
    border: none;
    outline: none;
    font-size: 14px;
    color: #051229;
    flex-grow: 1;
    min-width: 0;
}

.search-courses input::placeholder {
    color: #888;
}

.search-courses button {
    background-color: #84d195;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 0 6px 6px 0;
}

.search-courses button i {
    color: #051229;
    font-size: 16px;
}

/* Dropdown and Layout Switch */
.courses-order-by-wrapper select {
    padding: 10px 12px;
    border-radius: 6px;
    border: 2px solid #84d195;
    background-color: #fff;
    color: #051229;
    font-size: 14px;
    cursor: pointer;
    min-width: 160px;
}

.switch-layout {
    display: flex;
    align-items: center;
    gap: 10px;
}

.switch-layout input[type="radio"] {
    display: none;
}

.switch-layout .switch-btn {
    width: 32px;
    height: 32px;
    background-color: #fff;
    border: 2px solid #84d195;
    border-radius: 6px;
    cursor: pointer;
}

.switch-layout input[type="radio"]:checked + .switch-btn {
    background-color: #84d195;
}

.switch-layout input[type="radio"]:checked + .switch-btn::before {
    background-color: #051229;
}
.learn-press-courses .course {
    background-color: #fff;
    border: 2px solid #84d195;
    border-radius: 12px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.06);
    margin-bottom: 25px;
    overflow: hidden;
    transition: all 0.3s ease;
    display: flex;
    flex-direction: row;
    gap: 20px;
    padding: 20px; /* Add spacing inside the box */
}

.course-thumbnail {
    flex: 0 0 250px; /* Set a fixed width */
}

.course-thumbnail img {
    width: 100%;
    height: auto;
    border-radius: 8px;
}

.course-content {
    flex: 1;
    padding: 0; /* Avoid internal extra padding */
}

.course-title {
    font-size: 20px;
    font-weight: 700;
    color: #051229;
    margin-bottom: 8px;
}

.course-short-description {
    font-size: 14px;
    color: #555;
    margin-top: 10px;
    margin-bottom: 15px;
}

.course-info,
.course-wrap-meta {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    font-size: 13px;
    color: #777;
    margin-top: 10px;
}

.course-price .free {
    background-color: #84d195;
    color: #000;
    font-weight: bold;
    padding: 6px 12px;
    border-radius: 6px;
}

.course-readmore a {
    background: #84d195;
    padding: 8px 14px;
    border-radius: 6px;
    font-weight: bold;
    color: #000;
    text-decoration: none;
}
.learn-press-courses .course {
    background-color: #ffffff;
    border: 2px solid #84d195; /* Highlight border */
    border-radius: 12px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.06);
    margin-bottom: 25px;
    overflow: hidden;
    transition: all 0.3s ease;
}

.learn-press-courses .course:hover {
    transform: translateY(-4px);
    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.12);
    border-color: #f5a623; /* Slightly darker highlight on hover */
}

.course-thumbnail img {
    width: 100%;
    height: auto;
    border-bottom: 1px solid #eee;
    border-radius: 12px 12px 0 0;
}

.course-content {
    padding: 20px;
}

.course-title {
    font-size: 20px;
    font-weight: 600;
    color: #051229;
    margin-bottom: 8px;
}

.course-short-description {
    color: #444;
    font-size: 14px;
    line-height: 1.5;
    margin-top: 10px;
    margin-bottom: 15px;
}

.course-wrap-meta {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
    margin-top: 15px;
    font-size: 13px;
    color: #666;
}

.course-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 15px;
}

.course-price .free {
    background-color: #84d195;
    color: #051229;
    padding: 6px 10px;
    font-weight: bold;
    border-radius: 6px;
}

.course-readmore a {
    color: #0073e6;
    font-weight: 500;
    text-decoration: underline;
}
body.wp-singular.lp_course-template-default.single.single-lp_course .lp-single-course__header__inner{
  padding-top:0px !important;
  margin-right: 0px;
  margin-left:0px;
  max-width: 100% !important;
}
body.wp-singular.lp_course-template-default.single.single-lp_course .tf-page-title{
  width:100% !important;
  
}
.lp-content-area header.learn-press-courses-header h1{
  display:none;
}

.lp-courses-bar .switch-layout .switch-btn::before {
    display: inline-block;
  margin: -5px !important;
}







.lp-single-course-main__right {
  background-color: #051229;
  padding: 24px;
  border-radius: 20px;
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
  font-family: 'Poppins', sans-serif;
  max-width: 420px;
  color: #ffffff;
}

.lp-single-course-main__right__inner {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.course-img img {
  width: 100%;
  border-radius: 14px;
  object-fit: cover;
  border: 2px solid #84d195;
}

.info-learning, .info-metas {
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.course-progress {
  background: #0b1f3a;
  padding: 14px;
  border-radius: 10px;
}

.course-progress__label {
  font-weight: 600;
  margin-bottom: 6px;
  color: #84d195;
}

.course-progress__line {
  position: relative;
  height: 10px;
  background: #24364f;
  border-radius: 5px;
}

.course-progress__line__active {
  background: #84d195;
  height: 100%;
  border-radius: 5px;
}

.course-progress__line__point {
  position: absolute;
  top: -5px;
  width: 18px;
  height: 18px;
  background: #84d195;
  border-radius: 50%;
  border: 2px solid #051229;
  box-shadow: 0 0 0 3px #051229;
}

.info-meta-item {
  display: flex;
  justify-content: space-between;
  padding: 8px 0;
  border-bottom: 1px solid #223349;
  font-size: 15px;
  color: #d0d5dc;
}

.course-buttons {
  margin-top: 16px;
}

.btn-finish-course {
  background: #84d195;
  color: #051229;
  border: none;
  padding: 12px 24px;
  border-radius: 10px;
  cursor: pointer;
  font-weight: 600;
  font-size: 16px;
  transition: background 0.3s ease;
}

.btn-finish-course:hover {
  background: #e6b734;
}

.social-swapper {
  margin-top: 20px;
  border-top: 1px solid #223349;
  padding-top: 16px;
}

.share-toggle-icon {
  display: flex;
  align-items: center;
  cursor: pointer;
  gap: 8px;
  font-weight: 600;
  color: #84d195;
}

.lp-social-media {
  margin-top: 10px;
  list-style: none;
  padding: 0;
  display: flex;
  gap: 10px;
}

.lp-social-media li a {
  display: flex;
  align-items: center;
  gap: 6px;
  color: #cfd6e0;
  font-size: 14px;
  transition: color 0.3s;
}

.lp-social-media li a:hover {
  color: #ffffff;
}

.clipboard-post {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-top: 10px;
}

.clipboard-value {
  flex: 1;
  padding: 8px;
  background-color: #0b1f3a;
  color: #fff;
  border: 1px solid #33445c;
  border-radius: 6px;
}

.btn-clipboard {
  background: #84d195;
  color: #051229;
  padding: 8px 12px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  font-weight: 500;
}
.lp-single-course .course-readmore a{
  padding: 12px 21px 12px 20px;
    font-size: 18px;
    line-height: 19px;
    background-color: #84d195 !important;
    font-weight: 700;
    color: #000 !important;
  margin-top:20px !important;
}
.lp-single-course .course-readmore a:hover{
  padding: 12px 21px 12px 20px;
    font-size: 18px;
    line-height: 19px;
    background-color: #051229 !important;
    font-weight: 700;
    color: #fff !important;
}
button.lp-button.btn-finish-course:hover{
   background-color: #051229 !important;
    font-weight: 700;
    color: #fff !important;
}
button.lp-button.btn-finish-course{
   
    font-weight: 700;
    color: #000 !important;
}
button.lp-button.button-enroll-course:hover{
  background-color: #051229 !important;
    font-weight: 700;
    color: #fff !important;
}
.lp-single-course .lp-single-course-main .course-price .free {
    color:  #051229 !important;
}
button.lp-button.button-enroll-course{
    font-weight: 700;
    color: #000 !important;
}
.instructor-avatar img {
  width: 130px;
  height: 130px;
  border-radius: 50%;       /* Makes it circular */
  object-fit: cover;        /* Ensures image covers the box nicely */
  border: 4px solid #84d195; /* Yellow border */
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
  transition: transform 0.3s ease; /* Smooth hover effect */
  cursor: pointer;
}

.instructor-avatar img:hover {
  transform: scale(1.08);   /* Slight zoom on hover */
}
.lp-single-course__header .course-title {
    font-weight: 700;
    font-size: calc(var(--lp-font-size-base, 1em) * 2.15);
    margin: 0 0 24px 0;
    padding-left: 60px;
}
.course-instructor-category{
   padding-left: 60px;
}
/*.lp-single-course__header .course-instructor-category{
   padding-left: 65px;
}
/*.lp-single-course-info-one{
   padding-left: 65px;
}
*/


.img-icon img{
  border-radius:50% !important;
}











/*jbjhbjhbjhbjhruchi*/

 .tabs-container {
      display: flex;
      flex-wrap: wrap;
      max-width: 1200px;
      margin: auto;
      gap: 40px;
      align-items: flex-start;
    }

   .tabs-left {
      flex: 1 1 400px;
    }

 .tabs-header {
      display: flex;
      border-radius: 12px;
      overflow: hidden;
      background: #f1f1f1;
      margin-bottom: 24px;
    }

 .tab-button {
      flex: 1;
      padding: 14px 20px;
      border: none;
      font-weight: 600;
      cursor: pointer;
      background: transparent;
      transition: all 0.3s ease;
      color: #333;
    }

   .tab-button.active {
      background-color: #051229;
      color: #fff;
    }

   .tab-content {
      display: none;
      flex-direction: column;
      gap: 20px;
    }

  .tab-content.active {
      display: flex;
    }

 .tab-card {
      display: flex;
      align-items: center;
      padding: 16px;
      background-color: #fff;
      border-radius: 16px;
      box-shadow:0 4px 12px rgb(5 18 41);
      transition: box-shadow 0.3s ease;
   margin-bottom:15px;
    }
 /*.tab-card:hover {
      box-shadow: 0 6px 16px rgba(0,0,0,0.08);
    }*/

   .card-icon {
      width: 64px;
    height: 64px;
    border-radius: 16px;
    background-color: #fff;
    border: 2px solid #051229;
    padding: 5px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 24px;
    font-weight: bold;
    color: #ff5e14;
    margin-right: 16px;
    flex-shrink: 0;
}
  .card-icon img{
      border-radius:5px;
     }
 .card-text {
      font-size: 16px;
      line-height: 1.4;
      font-weight: 500;
    }
 .tabs-right {
      flex: 1 1 500px;
    }

    .tabs-right img {
      width: 100%;
      border-radius: 24px;
      object-fit: cover;
    }

    @media (max-width: 768px) {
    .tabs-container {
        flex-direction: column;
      }

       .tabs-right {
        order: -1;
      }
    }

 .launch-llc-section {
  padding: 0px 0;
  text-align: center;
}

body.wp-singular.page-template.page-template-CourseCatalog .llc-title {
  font-size: 30px;
  font-weight: 700;
  margin-bottom: 10px;
}

body.wp-singular.page-template.page-template-CourseCatalog .llc-subtitle {
  font-size: 18px;
  color: #666;
  margin-bottom: 30px;
}

body.wp-singular.page-template.page-template-CourseCatalog .llc-form-row {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 20px;
  flex-wrap: wrap;
  margin-bottom: 50px;
}
section.section.dashboard-section {
    padding-top: 40px;
    padding-bottom: 50px;
    margin-top: 90px;
  margin-bottom: 80px;
}
body.wp-singular.page-template.page-template-CourseCatalog .llc-dropdown {
  display: flex;
  align-items: center;
  border: 2px solid #051229;
  padding: 12px 18px;
  border-radius: 12px;
  background: #fff;
}

body.wp-singular.page-template.page-template-CourseCatalog .llc-dropdown select {
  border: none;
  font-size: 16px;
  margin-left: 10px;
  background: transparent;
  outline: none;
}

body.wp-singular.page-template.page-template-CourseCatalog .dropdown-number {
  background: #051229;
  color: #fff;
  font-weight: bold;
  padding: 6px 12px;
  border-radius: 50%;
}

body.wp-singular.page-template.page-template-CourseCatalog .llc-button {
  background: linear-gradient(to right, #051229, #051229);
  color: #fff;
  padding:20px 28px;
  font-size: 18px;
  border: none;
  border-radius: 10px;
  font-weight: 600;
  cursor: pointer;
}

/* Saylo Style */
body.wp-singular.page-template.page-template-CourseCatalog .wg-our-saylo {
  display: flex;
  flex-wrap: wrap;
  gap: 40px;
  justify-content: center;
  margin-top: 40px;
  text-align: left;
}

body.wp-singular.page-template.page-template-CourseCatalog .image-left {
  max-width: 400px;
}

.image-left .image img {
  width: 100%;
  height: auto;
  display: block;
  margin-bottom: 10px;
}

.wg-graph {
  background: #f9f9f9;
  padding: 10px;
  text-align: center;
}

.wg-graph .number {
  font-size: 24px;
  color: #051229;
  font-weight: 700;
}

.content-right {
  max-width: 400px;
}

.content-right h3 {
  font-size: 22px;
  margin-bottom: 15px;
}

.content-right p {
  font-size: 16px;
  margin-bottom: 20px;
}

.tf-btn.style-15 {
  display: inline-block;
  color: #051229;
  font-weight: 600;
  text-decoration: none;
}

.open-hours {
  font-size: 15px;
  margin-top: 20px;
  color: #444;
}


.entity-tabs-section {
  padding: 40px 20px;
}

.entity-tabs {
  display: flex;
  justify-content: center;
  margin-bottom: 30px;
  flex-wrap: wrap;
  gap: 15px;
}

.tab-btn {
  padding: 10px 25px;
  border-radius: 30px;
  border: 2px solid #ddd;
  background: #fff;
  color: #051229;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
}

.tab-btn.active {
  background: #051229;
  color: #fff;
  border-color: #051229;
  box-shadow: 0 4px 8px rgba(5, 18, 41, 0.2);
}

.entity-content {
  display: flex;
  flex-wrap: wrap;
  align-items: flex-start;
  justify-content: space-between;
  gap: 40px;
  max-width: 1200px;
  margin: 0 auto;
}

.entity-left {
  flex: 1;
  min-width: 300px;
  max-width: 600px;
}

.entity-left h2 {
  font-size: 28px;
  margin-bottom: 25px;
  color: #051229;
}

body.wp-singular.page-template.page-template-CourseCatalog .accordion {
  border-top: 1px solid #eee;
}

body.wp-singular.page-template.page-template-CourseCatalog .accordion-item {
  border-bottom: 1px solid #eee;
}

body.wp-singular.page-template.page-template-CourseCatalog .accordion-header {
  font-weight: 600;
  padding: 15px 10px;
  cursor: pointer;
  color: #051229;
  position: relative;
}

body.wp-singular.page-template.page-template-CourseCatalog .accordion-header::after {
  content: "˅";
  position: absolute;
  right: 15px;
  transition: transform 0.3s ease;
}

body.wp-singular.page-template.page-template-CourseCatalog .accordion-item.open .accordion-header::after {
  transform: rotate(180deg);
}

body.wp-singular.page-template.page-template-CourseCatalog .accordion-body {
  padding: 0 10px 15px;
  display: none;
  color: #444;
}

body.wp-singular.page-template.page-template-CourseCatalog .accordion-item.open .accordion-body {
  display: block;
}

body.wp-singular.page-template.page-template-CourseCatalog .entity-right {
  flex: 1;
  min-width: 280px;
  max-width: 480px;
}

body.wp-singular.page-template.page-template-CourseCatalog .entity-right img {
  width: 100%;
  border-radius: 20px;
  object-fit: cover;
}
body.wp-singular.page-template.page-template-CourseCatalog .tab-content {
  display: none;
}
body.wp-singular.page-template.page-template-CourseCatalog .tab-content.active {
  display: block;
}
body.wp-singular.page-template.page-template-CourseCatalog .entity-help-links {
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
  margin-top: 40px;
}

body.wp-singular.page-template.page-template-CourseCatalog .help-cardss {
  flex: 1 1 45%;
  background-color: #fff;
  border: 1px solid #e1e1e1;
  border-radius: 10px;
  padding: 20px 25px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  transition: border-color 0.3s ease, box-shadow 0.3s ease;
  cursor: pointer;
}

.help-cardss:hover {
  border-color: #051229;
  box-shadow: 0 4px 10px rgba(5, 18, 41, 0.08);
}

.text-contentss strong {
  display: block;
  color: #051229;

  margin-bottom: 5px;
}

.text-contentss p {
  margin: 0;
  color: #555;
 
}

.arrow {
  font-size: 24px;
  color: #051229;
}



.styled-entity-section {
  display: flex;
  flex-wrap: wrap;
  align-items: flex-start;
  gap: 40px;
  justify-content: space-between;
}

.styled-entity-section .content-left {
  flex: 1 1 55%;
}

.styled-entity-section .content-right {
  flex: 1 1 40%;
  text-align: center;
}

.styled-entity-section .content-right img {
  max-width: 100%;
  border-radius: 12px;
  box-shadow: 0 6px 20px rgba(5, 18, 41, 0.1);
}

.styled-entity-section .title {
  font-size: 24px;
  color: #051229;
  margin-bottom: 20px;
}

.styled-entity-section .text {
  font-size: 16px;
  color: #555;
  margin-bottom: 30px;
}

.faq-quiz details {
  background: #fff;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 15px 20px;
  margin-bottom: 15px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.faq-quiz summary {
  color: #051229;
  font-weight: 600;

  cursor: pointer;
}

.faq-quiz p {
  margin-top: 10px;
 
  color: #444;
}

.tf-btn.style-15 {
  background-color: #051229;
  color: #fff;
  padding: 12px 24px;
  border-radius: 6px;
  display: inline-block;
  transition: background-color 0.3s ease;
  font-weight: 500;
  text-decoration: none;
}

.tf-btn.style-15:hover {
  background-color: #0b1e3d;
}
.build-section{
   padding-top: 0px !important;
    padding-bottom: 50px !important;
}
.space-program{

    padding-bottom: 50px !important;
}
.gap-purpose{

    padding-bottom:0px !important;
}
section.s-our-saylo.tf-spacing-1.gap-purpose .swiper-slide .content:hover{
background-color:#f2edea !important;
}
section.s-our-saylo.tf-spacing-1.gap-purpose .swiper-slide .content{

height:500px;
max-height:600px;
}
section.s-our-saylo.tf-spacing-1.gap-purpose ul li, ol li {
    padding: 7px;
    line-height: 21px;
    list-style: disc;
    color:var(--body-text);
}
.value-framework ul li{
  padding: 5px;
    line-height: 21px;
    color:var(--body-text);
}
.tf-btn.style-6 {
    background-color: #051229 !important;
    color: var(--White);
}
section.value-framework p.title.font-main-2.text-anime-wave.text-dark{
  color:#051229 !important;
}





/* Container */
.badge-section {
  padding: 80px 20px;
  background: ;
  color: #ffffff;
  
}

.section-heading {
  text-align: center;
  margin-bottom: 50px;
}

.section-heading h2 {
  font-size: 36px;
  
  margin-bottom: 10px;
}

.section-heading .sub-heading {
  font-size: 16px;
  color: #000;
  margin-bottom: 20px;
}

.section-heading .progression-title {
  font-size: 24px;
  color: #000;
  font-weight: 600;
  margin-top: 20px;
}

/* Grid */
.badge-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 25px;
}

/* Card */
.badge-card {
  background: #051229;
  padding: 20px;
  border-radius: 12px;
  box-shadow: 0 8px 20px rgba(0,0,0,0.2);
  transition: transform 0.3s, box-shadow 0.3s;
  position: relative;
  overflow: hidden;
  border-left: 6px solid #84d195;
}

.badge-card:hover {
  transform: translateY(-6px);
  box-shadow: 0 12px 30px rgba(124, 79, 224, 0.5);
}

.week {
  font-size: 18px;
  font-weight: 600;
  color: #fff;
  margin-bottom: 10px;
  letter-spacing: 1px;
  text-transform: uppercase;
}

.badge-name {
  font-size: 18px;
  color: #84d195;
  margin: 5px 0;
}

.module {
  font-size: 18px;
  color: #ccc;
  margin-bottom: 12px;
}

.criteria {
  font-size: 16px;
  color: #aaa;
  line-height: 1.6;
}

/* Responsive adjustments */
@media(max-width: 480px) {
  .section-heading h2 {
    font-size: 28px;
  }
  .section-heading .progression-title {
    font-size: 20px;
  }
}

section.section.dashboard-section table, th, td {
    border: 1px solid #fff !important;
}
 section.section.dashboard-section .left-content {
      flex: 1 1 40%;
      border: 2px solid #fff;
      border-radius: 10px;
    }
section.section.dashboard-section{
  padding-top: 40px;
    padding-bottom: 50px;
}
    section.section.dashboard-section .left-content h1 {
      font-size: 42px;
      font-weight: 700;
      margin-bottom: 15px;
    }

    section.section.dashboard-section .left-content p {
      font-size: 18px;
      color: var(--text-muted);
      line-height: 1.6;
    }
    section.section.dashboard-section img{
      padding-top:4%;
    }

    section.section.dashboard-section .right-content {
      flex: 1 1 55%;
      border: 2px solid #fff;
      border-radius: 12px;
      padding: 15px 25px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.06);
    }

    section.section.dashboard-section .right-content h4 {
      font-size: 18px;
      font-weight: 600;
      margin-bottom: 20px;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    section.section.dashboard-section table {
      width: 100%;
      border-collapse: collapse;
    }

    section.section.dashboard-section th, td {
      padding: 12px 15px;
      text-align: left;
      font-size: 15px;
      color:#fff;
      border-bottom: 1px solid #fff;
    }

    section.section.dashboard-section th {
      font-weight: 600;
      color: var(--text-dark);
    }

    section.section.dashboard-section .status {
      padding: 6px 14px;
      border-radius: 20px;
      font-size: 13px;
      font-weight: 600;
      display: inline-block;
    }

    section.section.dashboard-section .good {
      background-color: #d6f5e7;
      color: #2b7a4b;
    }

    section.section.dashboard-section .pending {
      background-color: #ffe7cc;
      color: #c27800;
    }

    @media (max-width: 768px) {
     section.section.dashboard-section .container {
        flex-direction: column;
      }

      section.section.dashboard-section .left-content, .right-content {
        flex: 1 1 100%;
      }

      section.section.dashboard-section .left-content h1 {
        font-size: 32px;
      }

      section.section.dashboard-section .left-content p {
        font-size: 16px;
      }
    }
.dashboard-section{
  background-color: #051229;
}
section.s-case-study-02.catalog-courses .tf-hover .hover-1 img {
    width: 100%;
    object-fit: cover;
    height: 350px !important;
}
section.s-case-study-02.catalog-courses .swiper-slide {
    height: 350px !important; 
}
section.s-case-study-02.catalog-courses .swiper-button-next:after, .swiper-rtl .swiper-button-prev:after {
    content: 'next';
    color: #fff !important;
}
section.s-case-study-02.catalog-courses .swiper-button-prev:after, .swiper-rtl .swiper-button-next:after {
    content: 'prev';
   color: #fff !important;
}
.wg-curve-text.tf-animate__box.animate__slow.animate__animated.animate__zoomInLeft{
  background-color:transparent !important;
}
div#circularText{
  display:none;
}
.logo-images{
  height: 200px;
    max-width: 200px;
}
body.wp-singular.page-template.page-template-curriculum.page-template-curriculum-php.page.page-id-66 .gain-gain{
  padding-top:10px !important;
}
section.s-service-4.tf-spacing-1.course-two ul li, ol li{
   list-style: disc;
    padding: 5px;
    line-height: 25px;
}
body.wp-singular.page-template.page-template-curriculum.page-template-curriculum-php.page.page-id-66 .gain-gain ul li, ol li {
    padding: 0;
    list-style: disc;
    padding: 5px;
    line-height: 25px;

}
.widget-content-inner.active.form-froms img {
    max-height: 230px;
    object-fit: contain;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 p.current {
    color: #84d195;
}
.wg-curve-text.style-4 {
    background-color: transparent !important;
}






.c5u-learn-tabs-two-column {
  padding: 60px 20px;
  font-family: 'Poppins', sans-serif;
  background-color: #fff;
}

.c5u-learn-container {
  max-width: 1300px;
  margin: auto;
}

.c5u-learn-row {
  display: flex;
  flex-wrap: wrap;
  gap: 40px;
  align-items: flex-start;
}

.c5u-learn-left,
.c5u-learn-right {
  flex: 1;
  min-width: 300px;
}

.c5u-learn-heading h2 {
  font-size: 36px;
  font-weight: 700;
}

.c5u-learn-heading span {
  color: #0b2b64;
}

.c5u-learn-heading p {
  margin: 10px 0 30px;
  color: #555;
}

.c5u-learn-tab-buttons {
  display: flex;
  gap: 15px;
  margin-bottom: 30px;
}

.c5u-tab-btn {
  padding: 10px 20px;
  background: #f3f3f3;
  border-radius: 8px;
  border: none;
  font-weight: 600;
  cursor: pointer;
}

.c5u-tab-btn.active {
  background-color: #051229;
  color: #fff;
}
.c5u-tab-btn {
  
    width: 30%;
}
.c5u-tab-panel {
  display: none;
}

.c5u-tab-panel.active {
  display: block;
}

.c5u-accordion-item {
  border-bottom: 1px solid #ddd;
  padding: 15px 0;
}

.c5u-accordion-header {
  font-weight: 600;
  font-size: 20px;
  cursor: pointer;
  position: relative;
  padding-right: 20px;
}

.c5u-accordion-header::after {
  content: '▾';
  position: absolute;
  right: 0;
  top: 0;
  font-size: 16px;
}


 .c5u-accordion-body {
    display: none;
    padding: 10px 0 0;
    color: #000;
    font-size: 18px;
    line-height: 24px;
    padding: 10px 0px;

}

.c5u-learn-right img {
  width: 100%;
  border-radius: 12px;
}

@media (max-width: 768px) {
  .c5u-learn-row {
    flex-direction: column;
  }
  .c5u-learn-right {
    order: -1;
  }
}
.arrow-curriculum{
      font-size: 24px;
    color: #fff !important;
    background-color: #051229;
    padding: 10px;
    border-radius: 10%;
}
body.wp-singular.page-template.page-template-contact.page-template-contact-php.page.page-id-21 iframe{
  position:inherit !important;
}



#form-sub.style-4 {
  display: flex;
  align-items: center;
  background-color: #0a132a;
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 12px;
  max-width: 600px;
  height: 52px;
  overflow: hidden;
}

#form-sub.style-4 fieldset {
  display: flex;
  align-items: center;
  flex: 1;
  border: none;
  margin: 0;
  padding: 0 15px;
  background: transparent;
  height: 100%;
}

#form-sub.style-4 .icon {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  margin-right: 10px;
}

#form-sub .style-4 .icon i {
  font-size: 18px;
  color: white;
  display: flex;
  align-items: center;
}
footer.tf-footer.style-3 .wpcf7 form.sent .wpcf7-response-output {
    border-color: #46b450;
  color:#fff !important;
}
#form-sub.style-4 input[type="email"] {
  flex: 1;
  padding-left:10px !important;
  height: 100%;
  border: none;
  background: transparent;
  color: white;
  font-size: 14px;
  padding: 0;
  outline: none;
  display: flex;
  align-items: center;
}

footer.tf-footer.style-3 .wpcf7-response-output {
    border-color: #ffb900;
    color: #fff !important;
}
#form-sub .wpcf7-not-valid-tip {
    color: #dc3232;
    font-size: 12px !important;
    font-weight: normal;
    poistion: absolute;
    display: block;
    padding-left: 11px !important;
    line-height: 14px !important;
    /* padding-top: 55px; */
    top: 10px;
}
#form-sub.style-4 input::placeholder {
  color: rgba(255, 255, 255, 0.6);
}

#form-sub.style-4 button.tf-btn {
  background-color: #84d195;
  border: none;
      padding-bottom: 20px !important;
  border-radius: 0 12px 12px 0;
  height: 100%;
  padding: 0 24px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 6px;
  font-weight: 600;
  font-size: 14px;
  color: #000;
  cursor: pointer;
  transition: background 0.3s ease;
}

#form-sub.style-4 button.tf-btn i {
  font-size: 14px;
  padding-top:22px;
  display: flex;
  align-items: center;
}

#form-sub.style-4 button.tf-btn:hover {
  background-color: #84d195;
}




/*adm*/
.saylo-admissions {
 
  background: #f5f7fa;
  position: relative;
  padding: 80px 0;
}
.saylo-admissions .container {
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  gap: 40px;
  align-items: flex-start;
}
.saylo-admissions .content {
  flex: 1;
}
.saylo-admissions h2 {
  
  font-weight: 700;
  color: #00294d;
  margin-bottom: 15px;
}

.saylo-admissions .link-cta {
  color: #00294d;
  text-decoration: none;
  font-weight: 600;
  position: relative;
  transition: color 0.3s;
}
.adm-adm{
  font-size:35px !important;
  color:#00294d !important;
  padding-top:10px;
}
.saylo-admissions .link-cta:hover {
  color:#00294d;
}
section.saylo-admissions h4{
  color:#fff !important;
}
.saylo-admissions .link-cta i {
  margin-left: 5px;
  font-size: 0.9rem;
  vertical-align: middle;
}

.process-list {
  padding: 0;
  list-style: none;
  margin-top: 15px;
}
.process-list li {
  margin-bottom: 12px;

}
.process-list li a {
  text-decoration: none;
  color: #003366;
  font-weight: 500;
  display: inline-flex;
  align-items: center;
  transition: transform 0.2s, color 0.2s;
}
.process-list li a i {
  margin-right: 10px;
  color: #00294d;
}
.process-list li a:hover {
  color: #00294d;
  transform: translateX(5px);
}

.cta-panel {
  flex: 0 0 300px;
  background: #00294d;
  border-radius: 12px;
  padding: 35px;
  box-shadow: 0 10px 25px rgba(0,0,0,0.06);
  transition: transform 0.3s, box-shadow 0.3s;
}
.cta-panel:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0,0,0,0.08);
}
.cta-panel h4 {
  font-weight: 600;
  color: #00294d;
  margin-bottom: 20px;
}
.cta-list {
  list-style: none;
  padding: 0;
}
.cta-list li {
    margin-bottom: 18px;
    background-color: #fff;
     border-radius:10px;
}
.cta-list a {
  text-decoration: none;
  color:#003366;
 
  color: #003366;
  display: inline-flex;
  align-items: center;
  padding: 14px 12px;
  border-radius: 6px;
  transition: background 0.3s, color 0.3s;
}
.cta-list a i {
  margin-right: 9px;
  color: #00294d;
}
.cta-list a .link-icon {
  margin-left: auto;
  font-size: 0.85rem;
}
.cta-list a:hover {
  
  color: var(--Main-yellow);
}

@media (max-width: 900px) {
  .saylo-admissions .container {
    flex-direction: column;
  }
  .cta-panel {
    width: 100%;
    margin-top: 40px;
  }
}

body.home.wp-singular.page-template.page-template-front-page.page-template-front-page-php.page.page-id-13 section.s-new-blog.tf-spacing-1.brands-footer-section img.img1{
  height:150px;
  object-fit:contain;
}
body.home.wp-singular.page-template.page-template-front-page.page-template-front-page-php.page.page-id-13 section.s-contact input{
  border:1px solid var(--Border-2);
}
body.wp-singular.page-template.page-template-consultanting.page-template-consultanting-php.page.page-id-273 form.wpcf7-form.init input{
    border:1px solid var(--Border-2);
}
body.wp-singular.page-template.page-template-consultanting.page-template-consultanting-php.page.page-id-273 form.wpcf7-form.init input:hover{
     border-color: #051229;
}
body.wp-singular.page-template.page-template-consultanting.page-template-consultanting-php.page.page-id-273 form.wpcf7-form.init button.tf-btn.full{
  line-height:0px !important;
  padding:20px !important;
}
body.home.wp-singular.page-template.page-template-front-page.page-template-front-page-php.page.page-id-13 section.s-contact input:hover {
    border-color: #051229;
}
body.home.wp-singular.page-template.page-template-front-page.page-template-front-page-php.page.page-id-13 section.s-contact .tf-btn {
    font-size: 18px;
    font-weight: 700;
  line-height: 0px !important;
  padding:20px;
}




body.archive.tax-course_category .tf-page-title .content .title {
    font-family: 'Poppins', sans-serif;
    font-size: 50px !important;
    font-weight: 700;
    line-height: 95.62px;
    letter-spacing: -0.02em;
    color: var(--White);
    margin-bottom: 20px;
}
body.archive.tax-course_category h3.wap-course-title span.course-title{
    font-size: 28px !important;
}
body.wp-singular.post-template-default.single.single-post .tf-page-title .content .title {
    font-family: 'Poppins', sans-serif;
    font-size: 50px;
    font-weight: 700;
  /*width: 900px;*/
    line-height: 65.62px !important;
    letter-spacing: -0.02em;
    color: var(--White);
    margin-bottom: 20px;
}
body.archive.tax-course_category .learn-press-courses .course-content .course-readmore a{
  background-color:#051229 !important;
  color:#fff;
    
    padding: 15px 30px;
    font-size: 16px;
}
body.wp-singular.post-template-default.single.single-post section.s-blog-details{
  margin-top:50px !important;
  margin-bottom:50px !important;
}
body.wp-singular.post-template-default.single.single-post .tf-sidebar .news-list .caption a {
  font-size: 16px !important;
}
body.wp-singular.post-template-default.single.single-post .sb-news .news-list li .image {
  width: 90px;
  height: 90px;
  flex-shrink: 0;
  overflow: hidden;
  border-radius: 8px;
}

body.wp-singular.post-template-default.single.single-post .sb-news .news-list li .image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
}
body.wp-singular.post-template-default.single.single-post .sb-news .news-list li {
  display: flex;
  gap: 15px;
  align-items: flex-start;
}
body.wp-singular.post-template-default.single.single-post section.s-blog-details .content .tf-hover .hover-1 img {
    width: 100%;
    height: 400px !important;
    object-fit: cover;
    max-height:450px;
}
body.wp-singular.page-template.page-template-admission.page-template-admission-php.page.page-id-17 .tf-spacing-1 {
    padding-top: 90px;
    padding-bottom: 60px !important;
}

body.blog.logged-in.admin-bar.wp-embed-responsive.wp-theme-vincenttheme.theme-vincenttheme.woocommerce-js.single-author section.s-new-blog.tf-spacing-1 img.ls-is-cached.lazyloaded{
  width: 100%;
    height: 300px !important;
    max-height: 350px !important;
    object-fit: cover !important;
}
body.wp-singular.page-template.page-template-course.page-template-course-php.page.page-id-68 section.s-case-study-02.catalog-courses{
  padding-bottom:70px !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 .box-icon.style-8 .line {
    background-color: var(--Border-2);
    margin-bottom: 20px !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 .box-icon.style-8 .title {
    font-size: 22px;
    font-weight: 700;
    line-height: 30px;
    margin-bottom: 20px !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 .box-icon.style-8 {
    border-radius: 10px;
    border: unset;
    position: relative;
    padding: 20px 20px 25px 20px !important;
    overflow: hidden;
    background-color: var(--White);
}


body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 .wg-skill .name p {
    font-family: 'Poppins', sans-serif;
    font-size: 18px !important;
    font-weight: 600 !important;
    line-height: 0px;
    color: var(--White);
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 .tf-spacing-1 {
    padding-top: 90px;
    padding-bottom: 70px !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 .s-why-choose-3 .content-right {
    max-width: 590px !important;
    width: 100%;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 .wg-skill .name 
    margin-bottom: 0px !important; 
   
}
body.wp-singular.page-template.page-template-about.page-template-about-php section.s-why-choose-3.tf-spacing-8{
  padding-top:0px !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 section.s-new-blog.tf-spacing-1 .entry-image.mb-30.hover-1.hover-14 img {
    width: 100%;
    height: 300px !important;
    max-height: 350px !important;
    object-fit: cover !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 section.s-new-blog.tf-spacing-1 .entry-image.mb-30.hover-1.hover-14 img {
    width: 100%;
    height: 300px !important;
    max-height: 350px !important;
    object-fit: cover !important;
}
p.percent {
    font-size: 27px !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 section.s-why-choose.tf-spacing-1.why-about-section {
    background-color: #f2edea !important;
  padding-bottom:50px !important;
}
body.wp-singular.page-template.page-template-about.page-template-about-php.page.page-id-15 section.s-why-choose.tf-spacing-1.why-about-section p{
    color: #051229 !important;
}


body.wp-singular.page-template.page-template-CourseCatalog .llc-form-row {
    flex-wrap: inherit !important;
    margin-bottom: 50px;
}
body.wp-singular.page-template.page-template-CourseCatalog .llc-button {
    background: linear-gradient(to right, #051229, #051229);
    width: 200px !important;
    color: #fff;
  padding: 20px 10px !important;}

img.plan-img {
    border-radius: 10px;
  margin-bottom:10px;
}
.wg-pricing:hover img.plan-img {
    border: 3px solid #fff;
}

body.wp-singular.page-template.page-template-admission.page-template-admission-php section.value-framework{
  padding-top:50px;
}
body.wp-singular.page-template.page-template-admission.page-template-admission-php section.value-framework p.value-para {
    font-weight: 400;
    font-size: 26px !important;
    line-height: 30px;
    letter-spacing: 0px;
}



/*learn*/
/* Section background for Learn tab only */
.widget-content-inner.learn-tab-layout {
  padding: 40px 30px;
  /*background: linear-gradient(to bottom right, #f5f8fa, #ffffff);*/
  border-radius: 12px;
}

/* Learn cards */
.learn-tab-layout .learn-card {
      background: linear-gradient(145deg, #ffffff, #f0f0f0);
    border: 3px solid #051229;
    border-radius: 16px;
    padding: 15px 15px;
    text-align: center;
    text-decoration: none;
    box-shadow: 0 10px 18px rgba(0, 0, 0, 0.03);
    transition: all 0.3s ease;
    position: relative;
    height: 100%;
    display: flex
;
}

/* Hover effect */
.learn-tab-layout .learn-card:hover {
  transform: translateY(-6px);
  background: linear-gradient(145deg, #ffffff, #e9f3f8);
  border-color:5px solid #051229;
  box-shadow: 0 15px 28px rgba(0, 0, 0, 0.1);
}

/* Icon box */
.learn-tab-layout .learn-icon {
  width: 60px;
  height: 60px;
 
  
}

/* Icon styling */
.learn-tab-layout .learn-icon img {
  width: 100%;
  height: auto;
  object-fit: contain;
  filter: drop-shadow(0px 2px 2px rgba(0, 0, 0, 0.08));
}

/* Title styling */
.learn-tab-layout h5 {
  font-size: 24px;
  font-weight: 600;
  color: #111;
  margin-bottom: 5px;
  margin-left: 60px;
  margin-right: 60px;
}

/* Arrow icon */
.learn-tab-layout .learn-arrow {
    font-size: 24px;
    background-color: #051229;
    font-weight: bold;
    position: absolute;
    right: 20px;
    padding: 7px;
    border-radius: 6px;
    color: #fff;
    top: 20px;
    transition: color 0.3s ease;
}

/* Arrow hover color */
.learn-tab-layout .learn-card:hover .learn-arrow {
   background-color: #051229;
    font-weight: bold;
    position: absolute;
    right: 20px;
    padding: 7px;
    border-radius: 6px;
    color: #fff;
}
.program-section ul.main-tabss li{
  list-style:none !important;
}
.program-section ul.main-tabss{
  gap:10px !important;
}
div#learnModal ul{
  margin-left:20px !important;
}
.icon-images{
  width:240px !important;
  height:auto !important;
  border-radius:10px !important;
}

h5.icon-first-heading{
      margin-left: 10px !important;
    margin-right: 10px !important;
}
.widget-content-inner.learn-tab-layout.active{
  padding-bottom:0px !important;
}
.learn-button{
  background-color: #051229;
    color: var(--White);
  font-size: 18px;
    font-weight: 700;
    line-height: 22px;
  padding: 15px 31px 15px 30px;
  border-radius:10px;

}
.price-program .wg-pricing .price {
    font-size: 40px !important;
}
.price-program ul li{
  color:#000 !important;
  padding: 5px;
    list-style: disc;
}
.price-program .wg-pricing:hover ul li{
  color:#fff !important;
}
.price-program{
  padding-top:60px !important;
  padding-bottom:0px !important;
  
}
.pagination-wrapper li span.current {
    background-color: #051229 !important;
 
}


.learn-card {
  display: flex;
  align-items: center;
  gap: 12px; /* space between icon, heading, and arrow */
  padding: 15px 20px;
  border: 2px solid #00112d;
  border-radius: 12px;
  background: #f9fbfd;
  text-decoration: none;
  color: #000;
}

.learn-icon img {
  width: 30px;
  height: 30px;
  display: block;
}

.learn-card h5 {
  margin: 0;
  font-size: 26px;
  font-weight: 600;
}

.learn-arrow {
  font-size: 20px;
  color: #00112d;
  padding: 4px;
}
.learn-arrow {
  font-size: 22px;
  display: flex !important;
  align-items: center !important; 
  justify-content: center !important;
}









body.archive.tax-course_category.term-funding-and-finance.lp-content-area{
  margin-top:40px !important;
}
.learn-cont{
  border:3px solid #051229 !important;
      border-radius: 10px;
    padding: 10px;
}
.learn-cont button{
      display: block;
  transition:all 0.3s ease !important;
    margin: auto;
}
.learn-cont:hover{
      transform: translateY(-6px) !important;
    background: linear-gradient(145deg, #ffffff, #e9f3f8);
    border-color: 3px solid #051229;
    box-shadow: 0 15px 28px rgba(0, 0, 0, 0.1);
}
.learn-tab-layout .learn-arrow {
    
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;

    margin: 0 auto !important;
}





















.modal {
  display: none;
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background: rgba(0, 0, 0, 0.7);
}

.modal-content {
  background: white;
  margin: 5% auto;
  padding: 20px;
  max-width: 900px;
  width: 90%;
  border-radius: 8px;
  position: relative;
  max-height: 90vh;
  overflow-y: auto;
}

.modal-body h3 {
  margin-top: 20px;
  color: #222;
}

.modal-body p {
  margin-bottom: 15px;
  line-height: 1.6;
  font-size: 15px;
  color: #333;
}

.close {
  position: absolute;
  right: 15px;
  top: 10px;
  font-size: 28px;
  color: #aaa;
  cursor: pointer;
}
.debit-free{
  color:  #00294d !important;
}
.close:hover {
  color: #000;
}
#learnModal h2{
  font-size:24px !important;
  line-height: 35px !important;
    margin-bottom: 20px !important;
}
.work-stepss{
  padding-bottom:0px !important;
}
.value-btn{
  background-color: #051229;
    color: var(--White);
    font-size: 18px;
    font-weight: 700;
    line-height: 22px;
    padding: 15px 31px 15px 30px;
    border-radius: 10px;
}




body.wp-singular.page-template.page-template-BusinessOpportunitySurvey.page-template-BusinessOpportunitySurvey-php p.say.font-main-2.mb-30.survey-test{
  font-size: 18px !important;
    font-weight: 600 !important;
    line-height: 29px !important;
    color: #051229;
}
footer.tf-footer.ceo-mail{
  background-color:#051229 !important;
  margin-bottom:60px;
}




section.s-new-blog.tf-spacing-1 img.ls-is-cached.lazyloaded{
  height:250px !important;
  max-height:300px !important;
}

section.s-new-blog.tf-spacing-1 .card-blog-item.tf-hover{
  margin-bottom:40px;
}


body.blog.logged-in.admin-bar.wp-embed-responsive.wp-theme-vincenttheme.theme-vincenttheme.woocommerce-js.single-author section.s-new-blog.tf-spacing-1 img.ls-is-cached.lazyloaded {
    width: 100%;
    height: 250px !important;
    max-height: 300px !important;
    object-fit: cover !important;
}



img#readIcon{
  background-color: #84d195;
    border-radius: 25px;
    padding: 10px;
}
img#readIcon {
    background-color: #84d195;
    border-radius: 25px;
    padding: 10px;
    transition: transform 0.3s ease;
}

/* Hover Effect */
img#readIcon:hover {
    transform: scale(1.2); /* Zoom in */
   border-radius: 25px;
}
button#readBtn{
  padding:10px;
  bottom:60px !important;
}

body.wp-singular.lp_course-template-default.single.single-lp_course.postid-359 .info-meta-item {
    color: #051229 !important;
  font-size: 20px !important;
}
.colr-copy{
  color:#fff !important;
  padding-top:10px !important;
}



.logo-steps{
  bottom:75px !important;
}
.image-cu5-border img{
  border: 3px solid #fff;
    padding: 10px;
}






.single-program section.s-blog-details{
  padding-top: 70px;
    padding-bottom: 70px;
}

.single-program .sb-news .news-list li {
    display: flex;
    align-items: flex-start;
    gap: 15px; 
}

.single-program .sb-news .news-list li .image {
    flex: 0 0 100px;   
    height: 100px;    
    overflow: hidden;
    border-radius: 8px;
}

.sb-news .news-list li .image img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover; 
}
.single-program .tf-hover .hover-1 {
    overflow: hidden;
    height: 400px;
   max-height:450px;
}
.single-program .tf-hover .hover-1 img{
    object-fit:cover;
}




.info-meta-item {
    display: flex
;
    justify-content: space-between;
    padding: 8px 0;
    border-bottom: 1px solid #223349;
    font-size: 15px;
    color: #051229 !important;
}



.single-lp_course h1.course-title{
  line-height: 50px !important;
}
.single-lp_course .tf-page-title{
  margin-bottom:60px;
}

.lp-single-course__header .course-instructor-category a:hover {
    color: #051229 !important;
}

.lp-single-course__header .course-title {
   padding-left:0px !important; 
}
.lp-single-course-info-one {
     padding-left: 0px !important; 
}
.learn-press-message.info {
    background-color: rgba(0, 122, 255, 0.1019607843);
    color: #051229 !important;
}

form#commentform textarea#comment:hover {
    border-color: #051229 !important;
}

.single-lp_course .learn-press-courses .course {
    width: 24%;
    margin: 0 0 32px 0;
    box-shadow: none;
    list-style: none;
}
 .learn-press-courses {
    gap: 10px !important;
  margin:0 !important
}
.learn-press-courses[data-layout=grid] .course, .learn-press-courses.lp-courses-related .course {
    padding: 6px !important;
}
.learn-press-courses.lp-courses-related .course-item{
  border:none !important;
}
.single-lp_course .learn-press-courses .course-thumbnail {
    flex: 0 0 170px !important;
}

.single-lp_course .learn-press-courses h2.heading-text.js-builder-heading-text{
  font-size:46px !important;
  color: #051229 !important;
}

 .page-id-125 .learn-press-courses[data-size="3"] .course {
    width: 31.3333%;
}

.page-id-125 .course-thumbnail {
    flex: 0 0 200px !important;
}




.single-lp_course .tf-page-title .content .title {
    font-family: 'Poppins', sans-serif;
    font-size: 58px;
  line-height: 70.62px;
}








.page-id-25 section.s-pricing.tf-spacing-3.price-program  .wg-pricing .price {
    font-size: 26px !important;
    line-height: 36px !important;
}

.page-id-25 .wg-pricing:hover .price a {
	color:#fff !important;
}
.page-id-25 .wg-pricing:hover a {
	color:#fff !important;
}

.page-id-25 section.s-service-4.tf-spacing-1.course-two{
	display:none !important;
}


@media(max-width:991px){
.inner-mobile-nav.overflow-y-auto .bottom{
	display:none;
}
	.mobile-nav-wrap.active .inner-mobile-nav {
        left: 0 !important;
        height: 600px !important;
    }
}
/*nav*/

page-template-contact-php img.map-image img{
	    height: 750px;
	max-height:820px;
    object-fit: cover;
    /* width: 100%;*/
}

.text-about-makes p.about-mkaes-para{
	color:#000 !important;
	font-size: 26px !important;
}



.learn-press-courses .course-thumbnail img {
    display: block;
    width: 100%;
    height: 200px !important;
	max-height:220px;
	object-fit: fill !important;}
.learn-press-courses .course-item{
	display:inherit !important;
}


.heading-economic{
	color:#fff !important;
}
.gain-gain{
	font-size: 30px !important;
	margin-bottom:10px !important;
}
.list-gain p{
	margin-bottom:10px !important;
}
.gain-content{
	align-items:start !important;
text-align:start !important;
}
.bottom-gain{
	color:#fff !important;
}
.gain-row{
	align-items:center !important;
}

html :where(img[class*=wp-image-]) {
    height: auto;
    max-width: 100%;
    width: 100% !important;
    object-fit: cover;
    margin-bottom: 50px !important;
}



.tf-page-title .content .title.partners {
    font-family: 'Poppins', sans-serif;
    font-size: 50px !important;
    font-weight: 700;
    line-height: 60.62px !important;
    letter-spacing: -0.02em;
    color: var(--White);
    margin-bottom: 20px;
}



.image-partners img{
	width:100%;
}



.col-lg-4.brand{
    margin-top: 40px;
}



.partner-cta{
	font-size: 28px !important;
    font-weight: 600 !important;
    line-height: 36px !important;
}
.partnerss-cta .bg-image img {
    min-height: 900px !important;
}
.partnerss-cta .content{
	top: 50%;
    left: 18%;
    width: 800px;
    transform: translate(-9px, -50%);
    position: absolute;
}
.partnerss-cta .content p{
text-align:center !important;
}
.partnerss-cta .content a{
display:block !important;
	margin:auto;
}




.page-template-curriculum section.s-why-choose.tf-spacing-1.video-curriculum.gain-gain ul.gain-list li {
    font-size: 18px;
    /* padding-left: 20px !important; */
    margin-left: 24px;
}		</style>
        <div class="tf-page-title ">
            <div class="content-wrap">
                <div class="bg-image">
                    <div class="rellax" data-rellax-speed="-10">
                        <img src="{{ asset('assets/images/page-title/page-title.jpg') }}" alt="">
                    </div>
                </div>
                <div class="tf-overlay"></div>
                <div class="content">
                    <div class="tf-container">
                        <div class="row">
                            <div class="col-lg-12">
                                <p class="title">
                                  About
                                    
                                </p>
                                <div class="breadcrums">
                                    <a href="/">
                                        Home
                                    </a>
                                    <div class="icon">
                                        <i class="icon-chevron-r"></i>
                                    </div>
                                    <p class="current">
                                        About
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
        </div><!-- /.Page-title -->

             <!-- Section-about-company -->
            <section class="s-about-company tf-spacing-2 about-page-section">
                <div class="relative z-5">
                    <div class="tf-container">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="content-section">
                                    <p class="s-sub-title">
                                        <i class="icon-angles-right moveLeftToRight"></i>
                                        Welcome to Category 5 Universe Entrepreneur Institute
                                    </p>

                                    <p class="s-title mb-20 text-anime-wave text-clamp-4">
                                       A place for Entrepreneurs to BUILD, SCALE & IMPACT<span>
                                          their Communities
                                        </span>
                                    </p>
                                   <!---<p class="text mb-10">
                                  C5U Entrepreneur Institute isn't a Traditional Community College. We're a Debt-Free, Digital Launchpad for Entrepreneurs — "Learning-as-a-Service", Blending Education, Mentorship, and Practical Startup Resources.


                                </p>-->
                                     <p class="text mb-10">
                                         <strong>Who we are</strong><br>
                                  The C5U Entrepreneur Institute isn’t another online program — it’s a
blueprint for building entire entrepreneurial ecosystems.
We’ve designed a model that empowers entrepreneurs in underserved
communities to launch and scale revenue-generating businesses while
transforming local economies.


                                </p>
                                
                                
                                    <ul class="list mb-50 list-about">
                                        <li>
                                            <p class="font-main-2">
                                                 <i class="flaticon-check-mark"></i> Online-first and mobile-friendly
                                            </p>
                                            
                                        </li>
                                        <li>
                                            <p class="font-main-2">
                                               <i class="flaticon-check-mark"></i> Curriculum built for real-world revenue
                                            </p>
                                            
                                        </li>
                                         <li>
                                            <p class="font-main-2">
                                               <i class="flaticon-check-mark"></i> Free-to-start model with premium upgrade options
                                            </p>
                                            
                                        </li>
                                         <li>
                                            <p class="font-main-2">
                                              <i class="flaticon-check-mark"></i> Business systems over lectures (proof, not promise)
                                            </p>
                                            
                                        </li>
                                         <li>
                                            <p class="font-main-2">
                                               <i class="flaticon-check-mark"></i> C5U Entrepreneur Institute Certification = Proof of Profit, not just attendance
                                            </p>
                                            
                                        </li>
                                         <li>
                                            <p class="font-main-2">
                                             <i class="flaticon-check-mark"></i> Network-powered growth through WhatsApp, webinars, and local hubs
                                            </p>
                                            
                                        </li>
                                    </ul>
                                    
                                </div>
                            </div>
                            <div class="col-lg-5 offset-lg-1">
                                <div class="image-wrap">
                                    <div class="image">
                                        <img src="{{ asset('assets/images/img2.jpg') }}" data-src="{{ asset('assets/images/img2.jpg') }}"
                                            alt="" class="lazyload tf-animate-2">
                                    </div>
                                    <span class="half-circle item-1 wow rollInRight"></span>
                                    <span class="half-circle item-2 wow rollInRight" data-wow-delay="0.5s"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.Section-about-company -->

 <!-- /.Section-slider-project -->
   <footer class="tf-footer ceo-mail">
            <div class="footer-top">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <div class="content">
                                <p class="title font-main-2 text-anime-style-2">
                                    What makes us <br> 
                                    <span> different? </span>
                                </p>
                               
                                <p class="text">
                                    We don’t just teach. We connect the dots between education, business, and government to unlock resources, funding, and partnerships that create measurable growth.
                                </p>
                                

                                       <div class="col-lg-9 offset-lg-1">
                                <div class="subscribe-wrap">                                    
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
					 <div class="row gain-row">
                        <div class="col-lg-6">
                            <div class="content gain-content">
                               
								<h3 class="text-white heading-economic mb-10">This is entrepreneurship as an economic engine.</h3>
								<p>
									<strong class="heading-economic">Our ecosystem is built for:</strong>
								</p>
                                <p class="text-white">Community Leaders & Educators who want to build real pathways to opportunity.
Entrepreneurs are ready to grow sustainable businesses that matter.
Policymakers & Changemakers who need proven, scalable solutions.</p>
                                <p class="text-white mb-20">👉 Every successful entrepreneur starts somewhere.</p>
                                <ul class="list mb-10 list-gain">
                                    <li>
                                        
                                        <h3 class="title gain-gain">
                                           💡 What you’ll gain:
                                        </h3>
                                        <p class="text">
                                           <i class="flaticon-check-mark"></i> A tested framework to strengthen workforce training and build industry partnerships.
                                        </p>
                                        <p class="text"><i class="flaticon-check-mark"></i> Step-by-step tools to create actionable local entrepreneurship plans.</p>
                                        <p class="text"><i class="flaticon-check-mark"></i> Funding strategies, templates, and growth frameworks to make it real — fast.
</p>
                                       
                                    </li>
                                    <p class="text bottom-gain">📊 C5UEI is more than education. </p>
                                    
                                  <p class="text bottom-gain">
									  It’s the infrastructure of opportunity.<br>

Giving entrepreneurs in under-served communities a significant strategic advantage.
<br>
<strong>#Debt-Free</strong>
									</p>
                                   
                                </ul>
								
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="content-left s1">
                                <div class="image-wrap">
                                    <div class="image image-cu5-border">
                                        <img src="{{ asset('assets/images/ggs.jpg') }}"  
                                            data-src="{{ asset('assets/images/ggs.jpg') }}" alt="" class="lazyload">
                                    </div>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>

        </footer>
<!-- Section why-chos-why-choose-2 -->
     <!-- Section-service -->
            <section class="s-service-4 tf-spacing-1"style="padding-top:0px;">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="heading mb-70">
                                <p class="s-sub-title mb-15 justify-center">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    Entrepreneur Support
                                </p>
                                <p class="s-title text-center text-anime-wave">
                                    How do We Help Entrepreneurs<br> 
                                    <span>
                                        Succeed?
                                    </span>
                                </p>
                            </div>
                            <div class="grid-layout-2">
                             <div class="card-service-2 tf-hover ">
                                    <div class="image hover-1 hover-14">
                                        <img src="{{ asset('assets/images/widget/card-service-5.jpg') }}"
                                            data-src="{{ asset('assets/images/widget/card-service-5.jpg') }}" alt="" class="lazyload">
                                    </div>
                                    <div class="content">
                                        <div class="icon">
                                            <i class="flaticon-data-management"></i>
                                        </div>
                                        <a class="title fw-7">
                                           Secret #1
                                        </a>
                                        <p class="text">
                                            The Importance of Domain Knowledge cannot be Overstated—you must not only recognize it when you see it, but also possess the Expertise and Communication skills to articulate it effectively through your work. We teach you to Work deep, not Hard. Arming you with Systemic Thinking, Monetization Skills, and Community Power.
                                        </p>
                                        
                                    </div>
                                </div>
                                <div class="card-service-2 tf-hover ">
                                    <div class="image hover-1 hover-14">
                                        <img src="{{ asset('assets/images/widget/card-service-6.jpg') }}"
                                            data-src="{{ asset('assets/images/widget/card-service-6.jpg') }}" alt="" class="lazyload">
                                    </div>
                                    <div class="content">
                                        <div class="icon">
                                            <i class="flaticon-human-resources"></i>
                                        </div>
                                        <a class="title fw-7">
                                           Secret #2
                                        </a>
                                        <p class="text">
                                            C5U Entrepreneur Institute exists for the moment before or after Entrepreneurs have worked with a Business coach, went to the University, read the books, or attended Seminars and Master Classes. We help you bridge the gap between knowing and doing—between hearing good advice and actually doing the work.
                                        </p>
                                        
                                    </div>
                                </div>
                               
                               
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-service -->

 <!-- Section-we-do -->
            <section class="s-we-do tf-spacing-3"style="padding-bottom:50px;">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="heading mb-70">
                               
                                <p class="s-title text-center text-anime-style-2">
                                   What to expect @C5UEI<br> 
                                    <span>
                                       Online
                                    </span>
                                </p>
                            </div>
                            <div class="feature-group overflow-hidden">
                                <div class="box-icon style-8 ">
                                    <div class="icon">
                                        <i class="flaticon-workflow"></i>
                                    </div>
                                    <a href="service-details.html" class="title">
                                        EXPECT CONVENIENCE
                                    </a>
                                    <span class="line mb-30"></span>
                                    <p class="text">
                                        Go to school wherever and whenever is best for you, on the device of your choice.
                                    </p>
                                    <div class="image">
                                        <a >

                                            <img src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg"
                                                data-src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg" alt="" class="lazyload">
                                        </a>
                                    </div>
                                </div>
                                <div class="box-icon style-8 ">
                                    <div class="icon">
                                        <i class="flaticon-team"></i>
                                    </div>
                                    <a  class="title">
                                        EXPECT A CAREER FOCUS
                                    </a>
                                    <span class="line mb-30"></span>
                                    <p class="text">
                                        Relevant and immediately applicable coursework gets you ready for your next ENTREPRENEURIAL move.
                                    </p>
                                    <div class="image">
                                        <a >

                                            <img src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg"
                                                data-src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg" alt="" class="lazyload">
                                        </a>
                                    </div>
                                </div>
                                <div class="box-icon style-8 ">
                                    <div class="icon">
                                       
                                         <i class="flaticon-workflow"></i>
                                    </div>
                                    <a  class="title">
                                       EXPECT SUPPORT
                                    </a>
                                    <span class="line mb-30"></span>
                                    <p class="text">
                                       Your dedicated entrepreneur
advisor provides the support you need to meet your academic goals.
                                    </p>
                                    <div class="image">
                                        <a >
                                            <img src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg"
                                                data-src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg" alt="" class="lazyload">
                                        </a>
                                    </div>
                                </div>
                                  <div class="box-icon style-8 ">
                                    <div class="icon">
                                        <i class="flaticon-team"></i>
                                    </div>
                                    <a class="title">
                                       EXPECT SUPERIOR FACULTY
                                    </a>
                                    <span class="line mb-30"></span>
                                    <p class="text">
                                       Learn from actual entrepreneurs who have done the work. Real-world experience and knowledge.
                                    </p>
                                    <div class="image">
                                        <a >
                                            <img src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg"
                                                data-src="https://byteved.com/wp-content/uploads/2025/07/feature.jpg" alt="" class="lazyload">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-we-do -->
  <!-- Section-why-choose-2 -->
            <section class="s-why-choose-3 tf-spacing-8"style="padding-top:0px;">
                <div class="tf-container">
                    <div class="row">
                     
                       
                        <div class="col-lg-12">
                            <div class="content">
                                <div class="content-left">
                                    <p class="s-sub-title text-white">
                                        <i class="icon-angles-right moveLeftToRight"></i>
                                        Why choose us
                                    </p>
                                    <p class="s-title text-white mb-30 text-anime-wave">
                                        Complain by the 
                                        <span>
                                           Numbers
                                        </span>
                                    </p>
                                    <p class="text text-white">
                                        start fast and free Application.
                                    </p>
                                </div>
                                <div class="content-right">
                                    <div class="wg-skill mb-20 ">
                                        <div class="name">
                                            <p>
                                               More than 100 online degrees and certificates.
                                            </p>
                                            <p class="percent">
                                                100%
                                            </p>
                                        </div>
                                        <div class="progress tf-animate-1">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                aria-valuemin="0" aria-valuemax="100" style="width: 89%;"></div>
                                        </div>
                                    </div>
                                    <div class="wg-skill mb-20 ">
                                        <div class="name">
                                            <p>
                                               Fully online courses and 24/7 access to coursework.
                                            </p>
                                            <p class="percent">
                                               100%
                                            </p>
                                        </div>
                                        <div class="progress tf-animate-1">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                aria-valuemin="0" aria-valuemax="100" style="width: 73%;"></div>
                                        </div>
                                    </div>
                                    <div class="wg-skill mb-20">
                                        <div class="name">
                                            <p>
                                              Free to apply to all of our Online Programs.
                                            </p>
                                            <p class="percent">
                                               $0
                                            </p>
                                        </div>
                                        <div class="progress tf-animate-1">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
                                        </div>
                                    </div>
                                     <div class="wg-skill ">
                                        <div class="name">
                                            <p>
                                              Start and finish courses quickly with six terms per year.
                                            </p>
                                            <p class="percent">
                                             6
                                            </p>
                                        </div>
                                        <div class="progress tf-animate-1">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-why-choose-2-->

                     <!-- Section-why-choose -->
<section class="s-why-choose tf-spacing-1 why-about-section">
    <div class="mb-10">
        <div class="tf-container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="video-wrap style-2">
                        <img src="https://byteved.com/wp-content/uploads/2025/08/card-project-3.jpg"
                            data-src="https://byteved.com/wp-content/uploads/2025/08/card-project-3.jpg" alt="" class="lazyload tf-animate-2">
                        <a href="https://www.youtube.com/watch?v=m_KjR1XdVVI"
                            class="popup-youtube fs-14 fw-7">
                            <i class="icon-play"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="content">
                        <p class="s-sub-title mb-17">
                            <i class="icon-angles-right moveLeftToRight"></i>
                            Why choose us
                        </p>
                        <p class="s-title text-main-green-3 mb-30 text-anime-wave">
                           $250K at Harvard, <br>No Guaranteed  
                            <span>
                              Opportunity
                            </span>
                        </p>
                        <p class="text mb-40">
                            A prestigious degree might open doors, but it doesn't promise success. Real opportunity comes from experience, creativity, resilience, and knowing how to build value in the real world. In today’s landscape, skills, execution, and connections often outweigh a traditional pedigree.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tf-overlay"></div>
</section>
<!-- /.Section-why-choose -->

             <section class="s-new-blog tf-spacing-1 about-blogs">
                <div class="tf-container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content text-center mb-70">
                                <p class="s-sub-title justify-center mb-17">
                                    <i class="icon-angles-right moveLeftToRight"></i>
                                    news & Blog
                                </p>
                                <p class="s-title text-anime-wave">
                                   Insights for the Next-Gen<br> 
                                    <span>
                                       Entrepreneur
                                    </span>
                                </p>
                            </div>
                            <div class="swiper-container slider-blog overflow-hidden">
                                <div class="swiper-wrapper">
                                    
                                    
                                                                         <div class="swiper-slide">
                                        <div class="card-blog-item tf-hover">
                                            <a href="https://byteved.com/vincent-dev/its-time-to-re-think-higher-education-in-america/">
                                                <div class="entry-image mb-30 hover-1 hover-14">
                                                                                                           <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/o_1itg021n715u41ni21q2t1dh148be.avif" alt="" class="lazyload">
                                                                                                        <div class="entry-date">
                                                        <p class="day">11</p>
                                                        <p class="month">Jun</p>
                                                    </div>
                                                </div>
                                            </a>
                                            
                                            <a href="https://byteved.com/vincent-dev/its-time-to-re-think-higher-education-in-america/" class="title fw-7 mb-10 text-clamp-2">
                                                It’s time to re-think higher education in America                                            </a>

                                            <a href="https://byteved.com/vincent-dev/its-time-to-re-think-higher-education-in-america/" class="tf-btn style-3 text-anime-style-1">
                                                Read More <i class="icon-chevron-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    
                                                                                  <div class="swiper-slide">
                                        <div class="card-blog-item tf-hover">
                                            <a href="https://byteved.com/vincent-dev/4-millionaire-success-habits-to-implement-today/">
                                                <div class="entry-image mb-30 hover-1 hover-14">
                                                                                                           <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-blog-item-5-300x220.jpg" alt="" class="lazyload">
                                                                                                        <div class="entry-date">
                                                        <p class="day">11</p>
                                                        <p class="month">May</p>
                                                    </div>
                                                </div>
                                            </a>
                                            
                                            <a href="https://byteved.com/vincent-dev/4-millionaire-success-habits-to-implement-today/" class="title fw-7 mb-10 text-clamp-2">
                                                4 Millionaire Success Habits to Implement Today                                            </a>

                                            <a href="https://byteved.com/vincent-dev/4-millionaire-success-habits-to-implement-today/" class="tf-btn style-3 text-anime-style-1">
                                                Read More <i class="icon-chevron-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    
                                                                                  <div class="swiper-slide">
                                        <div class="card-blog-item tf-hover">
                                            <a href="https://byteved.com/vincent-dev/millions-of-small-businesses-will-soon-be-for-sale-heres-how-smart-entrepreneurs-are-cashing-in/">
                                                <div class="entry-image mb-30 hover-1 hover-14">
                                                                                                           <img src="https://byteved.com/vincent-dev/wp-content/uploads/2025/06/card-blog-item-6-300x220.jpg" alt="" class="lazyload">
                                                                                                        <div class="entry-date">
                                                        <p class="day">09</p>
                                                        <p class="month">May</p>
                                                    </div>
                                                </div>
                                            </a>
                                            
                                            <a href="https://byteved.com/vincent-dev/millions-of-small-businesses-will-soon-be-for-sale-heres-how-smart-entrepreneurs-are-cashing-in/" class="title fw-7 mb-10 text-clamp-2">
                                                Millions of Small Businesses Will Soon Be for Sale. Here&#8217;s How Smart Entrepreneurs Are Cashing In                                            </a>

                                            <a href="https://byteved.com/vincent-dev/millions-of-small-businesses-will-soon-be-for-sale-heres-how-smart-entrepreneurs-are-cashing-in/" class="tf-btn style-3 text-anime-style-1">
                                                Read More <i class="icon-chevron-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    
                                                                              
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- /.Section-new-blog -->
             <!-- Section-cta -->
            <section class="s-cta">

                <div class="tf-container w-1780">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="wrap">
                                <div class="tf-overlay">
                                </div>
                                <div class="bg-image">
                                    <div class="rellax" data-rellax-speed="0.3">
                                        <img src="{{ asset('assets/images/section/cta.jpg') }}" data-src="{{ asset('assets/images/section/cta.jpg') }}" alt=""
                                            class="lazyload">
                                    </div>
                                </div>
                                <div class="content">
                                    <p class="s-title text-white mb-40 text-clamp-4 text-anime-wave">
                                       Take action today!🚀
                                        
                                    </p>
                                    <p class="text-white mb-40">Take this 15-minute survey to find out where you stand and get a customized action plan to turn your ideas into profit! Your success starts with clarity.

</p>
                                    <a href="https://byteved.com/business-opportunity-survey/ " class="tf-btn style-13 text-anime-style-1">
                                        Start Here
                                        <i class="icon-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section><!-- /.Section-cta -->
@endsection
