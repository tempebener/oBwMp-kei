'use strict';

// Global components list
let components = {};

// Add by Bayu - Start
var base_url = window.location.origin;
// "http://stackoverflow.com"

var host = window.location.host;
// stackoverflow.com

// Add by Bayu - End

components.customFont = {
	selector: '[class*="custom-font-"]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/custom-font/custom-font.css'
};

components.fontMontserrat = {
	selector: 'html',
	styles: 'https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap'
};

components.pageReveal = {
	selector: 'html',
	init: function( nodes ) {
		window.addEventListener( 'components:ready', function () {
			window.dispatchEvent( new CustomEvent( 'resize' ) );
			document.documentElement.classList.add( 'components-ready' );

			setTimeout( function() {
				document.documentElement.classList.add( 'page-loaded' );
			}, 300 );
		}, { once: true } );
	}
};

components.currentDevice = {
	selector: 'html',
	script: 'http://localhost/kesatriaan/theme/frontend/components/current-device/current-device.min.js'
};

components.blurb = {
	selector: '.blurb',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/blurb/blurb.css'
};

components.box = {
	selector: '.box',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/box/box.css'
};

components.breadcrumb = {
	selector: '.breadcrumb',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/breadcrumb/breadcrumb.css'
};

components.button = {
	selector: '.btn',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/button/button.css'
};

components.footer = {
	selector: 'footer',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/footer/footer.css'
};

components.grid = {
	selector: '.container, .container-fluid, .row, [class*="col-"]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/grid/grid.css'
};

components.icon = {
	selector: '.icon',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/icon/icon.css'
};

components.image = {
	selector: '.image',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/image/image.css'
};

components.input = {
	selector: '.form-group, .input-group, .form-check, .custom-control, .form-control',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/input/input.css'
};

components.link = {
	selector: '.link',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/link/link.css'
};

components.list = {
	selector: '.list',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/list/list.css'
};

components.logo = {
	selector: '.logo',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/logo/logo.css'
};

components.person = {
	selector: '.person',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/person/person.css'
};

components.post = {
	selector: '.post',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/post/post.css'
};

components.postMeta = {
	selector: '.post-meta',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/post-meta/post-meta.css'
};

components.preloader = {
	selector: '.preloader',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/preloader/preloader.css'
};

components.priceBox = {
	selector: '.price-box',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/price-box/price-box.css'
};

components.quote = {
	selector: '.quote',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/quote/quote.css'
};

components.rdForm = {
	selector: '.rd-form',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/rd-form/rd-form.css'
};

components.section = {
	selector: 'section',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/section/section.css'
};

components.social = {
	selector: '.social',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/social/social.css'
};

components.snackbar = {
	selector: '.snackbar',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/snackbar/snackbar.css'
};

components.termList = {
	selector: '.term-list',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/term-list/term-list.css'
};

components.textBlock = {
	selector: '.text-block',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/text-block/text-block.css'
};

components.thumbnail = {
	selector: '.thumbnail',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/thumbnail/thumbnail.css'
};

components.widget = {
	selector: '.widget',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/widget/widget.css'
};

// Script components
components.animate = {
	selector: '[data-animate]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/animate/animate.css',
	script: 'http://localhost/kesatriaan/theme/frontend/components/current-device/current-device.min.js',
	init: function ( nodes ) {
		if ( window.xMode || device.macos() ) {
			nodes.forEach( function ( node ) {
				let params = parseJSON( node.getAttribute( 'data-animate' ) );
				node.classList.add( 'animated', params.class );
			});
		} else {
			let observer = new IntersectionObserver( function ( entries ) {
				let observer = this;

				entries.forEach( function ( entry ) {
					let
						node = entry.target,
						params = parseJSON( node.getAttribute( 'data-animate' ) );

					if ( params.delay ) node.style.animationDelay = params.delay;
					if ( params.duration ) node.style.animationDuration = params.duration;

					if ( entry.isIntersecting ) {
						node.classList.add( 'animated', params.class );
						observer.unobserve( node );
					}
				});
			}, {
				threshold: .5
			});

			nodes.forEach( function ( node ) {
				observer.observe( node );
			});
		}
	}
};

components.counter = {
	selector: '[data-counter]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/counter/counter.css',
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/util/util.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/counter/counter.min.js',
	],
	init: function ( nodes ) {
		let observer = new IntersectionObserver( function ( entries ) {
			let observer = this;

			entries.forEach( function ( entry ) {
				let node = entry.target;

				if ( entry.isIntersecting ) {
					node.counter.run();
					observer.unobserve( node );
				}
			});
		}, {
			rootMargin: '0px',
			threshold: 1.0
		});

		nodes.forEach( function ( node ) {
			let counter = aCounter( Object.assign( {
				node: node,
				duration: 1000
			}, parseJSON( node.getAttribute( 'data-counter' ) ) ) );

			if ( window.xMode ) {
				counter.run();
			} else {
				observer.observe( node );
			}
		})
	}
};

components.countdown = {
	selector: '[ data-countdown ]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/countdown/countdown.css',
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/util/util.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/progress-circle/progress-circle.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/countdown/countdown.min.js'
	],
	init: function ( nodes ) {
		nodes.forEach( function ( node ) {
			aCountdown( Object.assign( {
				node:  node,
				tick:  100
			}, parseJSON( node.getAttribute( 'data-countdown' ) ) ) );
		} )
	}
};

components.lightgallery = {
	selector: '[data-lightgallery]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/lightgallery/lightgallery.css',
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/lightgallery/lightgallery.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/util/util.min.js'
	],
	init: function ( nodes ) {
		if ( !window.xMode ) {
			nodes.forEach( function ( node ) {
				node = $( node );
				let
					defaults = {
						thumbnail: true,
						selector: '.lightgallery-item',
						youtubePlayerParams: {
							modestbranding: 1,
							showinfo: 0,
							rel: 0,
							controls: 0
						},
						vimeoPlayerParams: {
							byline : 0,
							portrait : 0,
							color : 'A90707'
						}
					},
					options = parseJSON( node.attr( 'data-lightgallery' ) );

				node.lightGallery( Util.merge( [ defaults, options ] ) );
			});
		}
	}
};

components.multiswitch = {
	selector: '[data-multi-switch]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/multiswitch/multiswitch.css',
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/current-device/current-device.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/multiswitch/multiswitch.min.js'
	],
	dependencies: 'rdNavbar',
	init: function ( nodes ) {
		let click = device.ios() ? 'touchstart' : 'click';

		nodes.forEach( function ( node ) {
			if ( node.tagName === 'A' ) {
				node.addEventListener( click, function ( event ) {
					event.preventDefault();
				});
			}

			MultiswitchMin( Object.assign( {
				node: node,
				event: click,
			}, parseJSON( node.getAttribute( 'data-multi-switch' ) ) ) );
		});
	}
};

components.owlCarousel = {
	selector: '.owl-carousel',
	styles: [
		'http://localhost/kesatriaan/theme/frontend/components/owl-carousel/owl.carousel.css',
		'http://localhost/kesatriaan/theme/frontend/components/custom-font/custom-font.css'
	],
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/owl-carousel/owl.carousel.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/util/util.min.js'
	],
	init: function ( nodes ) {
		nodes.forEach( function ( node ) {
			let
				params = parseJSON( node.getAttribute( 'data-owl' ) ),
				defaults = {
					items: 1,
					margin: 30,
					loop: false,
					mouseDrag: true,
					stagePadding: 0,
					nav: false,
					navText: [],
					dots: false,
					autoplay: false,
					autoplayHoverPause: true
				},
				xMode = {
					autoplay: false,
					loop: false,
					mouseDrag: false
				},
				generated = {
					autoplay: node.getAttribute( 'data-autoplay' ) !== 'false',
					loop: node.getAttribute( 'data-loop' ) !== 'false',
					mouseDrag: node.getAttribute( 'data-mouse-drag' ) !== 'false',
					responsive: {}
				},
				aliaces = [ '-', '-sm-', '-md-', '-lg-', '-xl-', '-xxl-' ],
				values =  [ 0, 576, 768, 992, 1200, 1600 ],
				responsive = generated.responsive;

			for ( let j = 0; j < values.length; j++ ) {
				responsive[ values[ j ] ] = {};

				for ( let k = j; k >= -1; k-- ) {
					if ( !responsive[ values[ j ] ][ 'items' ] && node.getAttribute( 'data' + aliaces[ k ] + 'items' ) ) {
						responsive[ values[ j ] ][ 'items' ] = k < 0 ? 1 : parseInt( node.getAttribute( 'data' + aliaces[ k ] + 'items' ), 10 );
					}
					if ( !responsive[ values[ j ] ][ 'stagePadding' ] && responsive[ values[ j ] ][ 'stagePadding' ] !== 0 && node.getAttribute( 'data' + aliaces[ k ] + 'stage-padding' ) ) {
						responsive[ values[ j ] ][ 'stagePadding' ] = k < 0 ? 0 : parseInt( node.getAttribute( 'data' + aliaces[ k ] + 'stage-padding' ), 10 );
					}
					if ( !responsive[ values[ j ] ][ 'margin' ] && responsive[ values[ j ] ][ 'margin' ] !== 0 && node.getAttribute( 'data' + aliaces[ k ] + 'margin' ) ) {
						responsive[ values[ j ] ][ 'margin' ] = k < 0 ? 30 : parseInt( node.getAttribute( 'data' + aliaces[ k ] + 'margin' ), 10 );
					}
				}
			}

			node.owl = $( node );
			$( node ).owlCarousel( Util.merge( window.xMode ? [ defaults, params, generated, xMode ] : [ defaults, params, generated ] ) );
		});
	}
};

components.regula = {
	selector: '[data-constraints]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/regula/regula.css',
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/regula/regula.min.js'
	],
	init: function ( nodes ) {
		let elements = $( nodes );

		// Custom validator - phone number
		regula.custom({
			name: 'PhoneNumber',
			defaultMessage: 'Invalid phone number format',
			validator: function() {
				if ( this.value === '' ) return true;
				else return /^(\+\d)?[0-9\-\(\) ]{5,}$/i.test( this.value );
			}
		});

		for (let i = 0; i < elements.length; i++) {
			let o = $(elements[i]), v;
			o.addClass("form-control-has-validation").after("<span class='form-validation'></span>");
			v = o.parent().find(".form-validation");
			if (v.is(":last-child")) o.addClass("form-control-last-child");
		}

		elements.on('input change propertychange blur', function (e) {
			let $this = $(this), results;

			if (e.type !== "blur") if (!$this.parent().hasClass("has-error")) return;
			if ($this.parents('.rd-mailform').hasClass('success')) return;

			if (( results = $this.regula('validate') ).length) {
				for (let i = 0; i < results.length; i++) {
					$this.siblings(".form-validation").text(results[i].message).parent().addClass("has-error");
				}
			} else {
				$this.siblings(".form-validation").text("").parent().removeClass("has-error")
			}
		}).regula('bind');

		let regularConstraintsMessages = [
			{
				type: regula.Constraint.Required,
				newMessage: "The text field is required."
			},
			{
				type: regula.Constraint.Email,
				newMessage: "The email is not a valid email."
			},
			{
				type: regula.Constraint.Numeric,
				newMessage: "Only numbers are required"
			},
			{
				type: regula.Constraint.Selected,
				newMessage: "Please choose an option."
			}
		];


		for (let i = 0; i < regularConstraintsMessages.length; i++) {
			let regularConstraint = regularConstraintsMessages[i];

			regula.override({
				constraintType: regularConstraint.type,
				defaultMessage: regularConstraint.newMessage
			});
		}
	}
};

// components.rdMailform = {
// 	selector: '.rd-mailform',
// 	styles: [
// 		'http://localhost/kesatriaan/theme/frontend/components/rd-mailform/rd-mailform.css',
// 		'http://localhost/kesatriaan/theme/frontend/components/font-awesome/font-awesome.css'
// 	],
// 	script: [
// 		'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
// 		'http://localhost/kesatriaan/theme/frontend/components/rd-mailform/rd-mailform.min.js',
// 	],
// 	init: function ( nodes ) {
// 		let i, j, k,
// 			$captchas = $( nodes ).find( '.recaptcha' ),
// 			msg = {
// 				'MF000': 'Successfully sent!',
// 				'MF001': 'Recipients are not set!',
// 				'MF002': 'Form will not work locally!',
// 				'MF003': 'Please, define email field in your form!',
// 				'MF004': 'Please, define type of your form!',
// 				'MF254': 'Something went wrong with PHPMailer!',
// 				'MF255': 'Aw, snap! Something went wrong.'
// 			};

// 		if ( $captchas.length ) {
// 			$.getScript("//www.google.com/recaptcha/api.js?onload=onloadCaptchaCallback&render=explicit&hl=en");
// 		}

// 		/**
// 		 * @desc Check if all elements pass validation
// 		 * @param {object} elements - object of items for validation
// 		 * @param {object} captcha - captcha object for validation
// 		 * @return {boolean}
// 		 */
// 		function isValidated(elements, captcha) {
// 			let results, errors = 0;

// 			if (elements.length) {
// 				for (let j = 0; j < elements.length; j++) {

// 					let $input = $(elements[j]);
// 					if ((results = $input.regula('validate')).length) {
// 						for (k = 0; k < results.length; k++) {
// 							errors++;
// 							$input.siblings(".form-validation").text(results[k].message).parent().addClass("has-error");
// 						}
// 					} else {
// 						$input.siblings(".form-validation").text("").parent().removeClass("has-error")
// 					}
// 				}

// 				if (captcha) {
// 					if (captcha.length) {
// 						return validateReCaptcha(captcha) && errors === 0
// 					}
// 				}

// 				return errors === 0;
// 			}
// 			return true;
// 		}

// 		/**
// 		 * @desc Validate google reCaptcha
// 		 * @param {object} captcha - captcha object for validation
// 		 * @return {boolean}
// 		 */
// 		function validateReCaptcha(captcha) {
// 			let captchaToken = captcha.find('.g-recaptcha-response').val();

// 			if (captchaToken.length === 0) {
// 				captcha
// 					.siblings('.form-validation')
// 					.html('Please, prove that you are not robot.')
// 					.addClass('active');
// 				captcha
// 					.closest('.form-wrap')
// 					.addClass('has-error');

// 				captcha.on('propertychange', function () {
// 					let $this = $(this),
// 						captchaToken = $this.find('.g-recaptcha-response').val();

// 					if (captchaToken.length > 0) {
// 						$this
// 							.closest('.form-wrap')
// 							.removeClass('has-error');
// 						$this
// 							.siblings('.form-validation')
// 							.removeClass('active')
// 							.html('');
// 						$this.off('propertychange');
// 					}
// 				});

// 				return false;
// 			}

// 			return true;
// 		}

// 		/**
// 		 * @desc Initialize Google reCaptcha
// 		 */
// 		window.onloadCaptchaCallback = function () {
// 			for (let i = 0; i < $captchas.length; i++) {
// 				let
// 					$captcha = $($captchas[i]),
// 					resizeHandler = (function() {
// 						let
// 							frame = this.querySelector( 'iframe' ),
// 							inner = this.firstElementChild,
// 							inner2 = inner.firstElementChild,
// 							containerRect = null,
// 							frameRect = null,
// 							scale = null;

// 						inner2.style.transform = '';
// 						inner.style.height = 'auto';
// 						inner.style.width = 'auto';

// 						containerRect = this.getBoundingClientRect();
// 						frameRect = frame.getBoundingClientRect();
// 						scale = containerRect.width/frameRect.width;

// 						if ( scale < 1 ) {
// 							inner2.style.transform = 'scale('+ scale +')';
// 							inner2.style.transformOrigin = 'top left';
// 							inner.style.height = ( frameRect.height * scale ) + 'px';
// 							inner.style.width = ( frameRect.width * scale ) + 'px';
// 						}
// 					}).bind( $captchas[i] );

// 				grecaptcha.render(
// 					$captcha.attr('id'),
// 					{
// 						sitekey: $captcha.attr('data-sitekey'),
// 						size: $captcha.attr('data-size') ? $captcha.attr('data-size') : 'normal',
// 						theme: $captcha.attr('data-theme') ? $captcha.attr('data-theme') : 'light',
// 						callback: function () {
// 							$('.recaptcha').trigger('propertychange');
// 						}
// 					}
// 				);

// 				$captcha.after("<span class='form-validation'></span>");

// 				if ( $captchas[i].hasAttribute( 'data-auto-size' ) ) {
// 					resizeHandler();
// 					window.addEventListener( 'resize', resizeHandler );
// 				}
// 			}
// 		};

// 		for ( i = 0; i < nodes.length; i++ ) {
// 			let
// 				$form = $(nodes[i]),
// 				formHasCaptcha = false;

// 			$form.attr('novalidate', 'novalidate').ajaxForm({
// 				data: {
// 					"form-type": $form.attr("data-form-type") || "contact",
// 					"counter": i
// 				},
// 				beforeSubmit: function (arr, $form, options) {
// 					if ( window.xMode ) return;

// 					let
// 						form = $(nodes[this.extraData.counter]),
// 						inputs = form.find("[data-constraints]"),
// 						output = $("#" + form.attr("data-form-output")),
// 						captcha = form.find('.recaptcha'),
// 						captchaFlag = true;

// 					output.removeClass("active error success");

// 					if (isValidated(inputs, captcha)) {

// 						// veify reCaptcha
// 						if (captcha.length) {
// 							let captchaToken = captcha.find('.g-recaptcha-response').val(),
// 								captchaMsg = {
// 									'CPT001': 'Please, setup you "site key" and "secret key" of reCaptcha',
// 									'CPT002': 'Something wrong with google reCaptcha'
// 								};

// 							formHasCaptcha = true;

// 							$.ajax({
// 								method: "POST",
// 								url: "components/rd-mailform/reCaptcha.php",
// 								data: {'g-recaptcha-response': captchaToken},
// 								async: false
// 							})
// 								.done(function (responceCode) {
// 									if (responceCode !== 'CPT000') {
// 										if (output.hasClass("snackbar")) {
// 											output.html('<div class="snackbar-inner"><div class="snackbar-title"><span class="icon snackbar-icon fa-check"></span>'+ captchaMsg[responceCode] +'</div></div>');

// 											setTimeout(function () {
// 												output.removeClass("active");
// 											}, 3500);

// 											captchaFlag = false;
// 										} else {
// 											output.html(captchaMsg[responceCode]);
// 										}

// 										output.addClass("active");
// 									}
// 								});
// 						}

// 						if (!captchaFlag) {
// 							return false;
// 						}

// 						form.addClass('form-in-process');

// 						if (output.hasClass("snackbar")) {
// 							output.html('<div class="snackbar-inner"><div class="snackbar-title"><span class="icon snackbar-icon fa-circle-o-notch fa-spin"></span>Sending</div></div>');
// 							output.addClass("active");
// 						}
// 					} else {
// 						return false;
// 					}
// 				},
// 				error: function (result) {
// 					if ( window.xMode ) return;

// 					let
// 						output = $("#" + $(nodes[this.extraData.counter]).attr("data-form-output")),
// 						form = $(nodes[this.extraData.counter]);

// 					output.text(msg[result]);
// 					form.removeClass('form-in-process');

// 					if (formHasCaptcha) {
// 						grecaptcha.reset();
// 					}
// 				},
// 				success: function (result) {
// 					if ( window.xMode ) return;

// 					let
// 						form = $(nodes[this.extraData.counter]),
// 						output = $("#" + form.attr("data-form-output")),
// 						select = form.find('select');

// 					form
// 						.addClass('success')
// 						.removeClass('form-in-process');

// 					if (formHasCaptcha) {
// 						grecaptcha.reset();
// 					}

// 					result = result.length === 13 ? result : 'MF255';
// 					output.text(msg[result]);

// 					if (result === "MF000") {
// 						if (output.hasClass("snackbar")) {
// 							output.html('<div class="snackbar-inner"><div class="snackbar-title"><span class="icon snackbar-icon fa-check"></span>'+ msg[result] +'</div></div>');
// 						} else {
// 							output.addClass("active success");
// 						}
// 					} else {
// 						if (output.hasClass("snackbar")) {
// 							output.html('<div class="snackbar-inner"><div class="snackbar-title"><span class="icon snackbar-icon fa-exclamation-triangle"></span>'+ msg[result] +'</div></div>');
// 						} else {
// 							output.addClass("active error");
// 						}
// 					}

// 					form.clearForm();

// 					if (select.length) {
// 						select.select2("val", "");
// 					}

// 					form.find('input, textarea').trigger('blur');

// 					setTimeout(function () {
// 						output.removeClass("active error success");
// 						form.removeClass('success');
// 					}, 3500);
// 				}
// 			});
// 		}
// 	}
// };

components.rdNavbar = {
	selector: '.rd-navbar',
	styles: [
		'http://localhost/kesatriaan/theme/frontend/components/rd-navbar/rd-navbar.css'
	],
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/util/util.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/current-device/current-device.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/rd-navbar/rd-navbar.min.js'
	],
	dependencies: 'currentDevice',
	init: function ( nodes ) {
		nodes.forEach( function ( node ) {
			let
				backButtons = node.querySelectorAll( '.navbar-navigation-back-btn' ),
				params = parseJSON( node.getAttribute( 'data-rd-navbar' ) ),
				defaults = {
					stickUpClone: false,
					anchorNav: false,
					autoHeight: false,
					stickUpOffset: '1px',
					responsive: {
						0: {
							layout: 'rd-navbar-fixed',
							deviceLayout: 'rd-navbar-fixed',
							focusOnHover: 'ontouchstart' in window,
							stickUp: false
						},
						992: {
							layout: 'rd-navbar-fixed',
							deviceLayout: 'rd-navbar-fixed',
							focusOnHover: 'ontouchstart' in window,
							stickUp: false
						},
						1200: {
							layout: 'rd-navbar-fullwidth',
							deviceLayout: 'rd-navbar-fullwidth',
							stickUp: true,
							stickUpOffset: '1px',
							autoHeight: true
						}
					},
					callbacks: {
						onStuck: function () {
							document.documentElement.classList.add( 'rd-navbar-stuck' );
						},
						onUnstuck: function () {
							document.documentElement.classList.remove( 'rd-navbar-stuck' );
						},
						onDropdownToggle: function () {
							if ( this.classList.contains( 'opened' ) ) {
								this.parentElement.classList.add( 'overlaid' );
							} else {
								this.parentElement.classList.remove( 'overlaid' );
							}
						},
						onDropdownClose: function () {
							this.parentElement.classList.remove( 'overlaid' );
						}
					}
				},
				xMode = {
					stickUpClone: false,
					anchorNav: false,
					responsive: {
						0: {
							stickUp: false,
							stickUpClone: false
						},
						992: {
							stickUp: false,
							stickUpClone: false
						},
						1200: {
							stickUp: false,
							stickUpClone: false
						}
					},
					callbacks: {
						onDropdownOver: function () { return false; }
					}
				},
				navbar = node.RDNavbar = new RDNavbar( node, Util.merge( window.xMode ? [ defaults, params, xMode ] : [ defaults, params ] ) );

			if ( backButtons.length ) {
				backButtons.forEach( function ( btn ) {
					btn.addEventListener( 'click', function () {
						let
							submenu = this.closest( '.rd-navbar-submenu' ),
							parentmenu = submenu.parentElement;

						navbar.dropdownToggle.call( submenu, navbar );
					});
				});
			}
		})
	}
};

components.rdSearch = {
	selector: '[data-rd-search]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/rd-search/rd-search.css',
	script: 'http://localhost/kesatriaan/theme/frontend/components/rd-search/rd-search.min.js',
	init: function ( nodes ) {
		nodes.forEach( function ( node ) {
			console.log( URLSearchParams );

			new RDSearch( Object.assign( {
				form: node,
				handler: 'components/rd-search/rd-search.php',
				output: '.rd-search-results'
			}, parseJSON( node.getAttribute( 'data-rd-search' ) ) ) );
		});
	}
};

components.slick = {
	selector: '.slick-slider',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/slick/slick.css',
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/slick/slick.min.js'
	],
	init: function ( nodes ) {
		nodes.forEach( function ( node ) {
			let
				breakpoint = { sm: 576, md: 768, lg: 992, xl: 1200, xxl: 1600 }, // slick slider uses desktop first principle
				responsive = [];

			// Making responsive parameters
			for ( let key in breakpoint ) {
				if ( node.hasAttribute( 'data-slick-' + key ) ) {
					responsive.push({
						breakpoint: breakpoint[ key ],
						settings: parseJSON( node.getAttribute( 'data-slick-' + key ) )
					});
				}
			}

			$( node ).slick({ responsive: responsive });
		});
	}
};

components.swiper = {
	selector: '[data-swiper]',
	styles: 'http://localhost/kesatriaan/theme/frontend/components/swiper/swiper.css',
	script: [
		'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/swiper/swiper.min.js',
		'http://localhost/kesatriaan/theme/frontend/components/util/util.min.js'
	],
	init: function ( nodes ) {
		nodes.forEach( function ( node ) {
			let
				slides = node.querySelectorAll( '.swiper-slide[data-slide-bg]' ),
				params = parseJSON( node.getAttribute( 'data-swiper' ) ),
				defaults = {
					speed: 1000,
					loop: true,
					pagination: {
						el: '.swiper-pagination',
						clickable: true
					},
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev'
					},
					autoplay: {
						delay: 5000
					}
				},
				xMode = {
					autoplay: false,
					loop: false,
					simulateTouch: false
				};

			// Set background image for slides with `data-slide-bg` attribute for Novi Builder
			slides.forEach( function ( slide ) {
				slide.style.backgroundImage = 'url(' + slide.getAttribute( "data-slide-bg" ) + ')';
			});

			new Swiper( node, Util.merge( window.xMode ? [ defaults, params, xMode ] : [ defaults, params ] ) );
		});
	}
};

components.toTop = {
	selector: 'html',
	styles: [
		'http://localhost/kesatriaan/theme/frontend/components/to-top/to-top.css',
		'http://localhost/kesatriaan/theme/frontend/components/font-awesome/font-awesome.css',
	],
	script: 'http://localhost/kesatriaan/theme/frontend/components/jquery/jquery.min.js',
	init: function () {
		if ( !window.xMode ) {
			let node = document.createElement( 'div' );
			node.className = 'to-top fa-angle-up';
			document.body.appendChild( node );

			node.addEventListener( 'mousedown', function () {
				this.classList.add( 'active' );

				$( 'html, body' ).stop().animate( { scrollTop:0 }, 500, 'swing', (function () {
					this.classList.remove( 'active' );
				}).bind( this ));
			});

			document.addEventListener( 'scroll', function () {
				if ( window.scrollY > window.innerHeight ) node.classList.add( 'show' );
				else node.classList.remove( 'show' );
			});
		}
	}
};


/**
 * Wrapper to eliminate json errors
 * @param {string} str - JSON string
 * @returns {object} - parsed or empty object
 */
function parseJSON ( str ) {
	try {
		if ( str )  return JSON.parse( str );
		else return {};
	} catch ( error ) {
		//{DEL LIVEDEMO BUILDER}
		console.warn( error );
		//{DEL}
		return {};
	}
}

/**
 * Get tag of passed data
 * @param {*} data
 * @return {string}
 */
function objectTag ( data ) {
	return Object.prototype.toString.call( data ).slice( 8, -1 );
}

/**
 * Merging of two objects
 * @param {Object} source
 * @param {Object} merged
 * @return {Object}
 */
function merge( source, merged ) {
	for ( let key in merged ) {
		let tag = objectTag( merged[ key ] );

		if ( tag === 'Object' ) {
			if ( typeof( source[ key ] ) !== 'object' ) source[ key ] = {};
			source[ key ] = merge( source[ key ], merged[ key ] );
		} else if ( tag !== 'Null' ) {
			source[ key ] = merged[ key ];
		}
	}

	return source;
}

// Main
window.addEventListener( 'load', function () {
	new ZemezCore({
		//{DEL LIVEDEMO BUILDER}
		debug: true,
		//{DEL}
		components: components,
		observeDOM: window.xMode,
		IEPolyfill: "https://polyfill.io/v3/polyfill.min.js?features=Element.prototype.closest%2CArray.from%2CCustomEvent%2CNodeList.prototype.forEach%2CObject.assign%2CIntersectionObserver%2CPromise%2CElement.prototype.remove%2CURLSearchParams",
		IEHandler: function ( version ) {
			document.documentElement.classList.add( 'ie-'+ version );
		}
	});
});
