/*price range*/

if ($.fn.slider) {
    $('#sl2').slider();
}

var RGBChange = function () {
    $('#RGB').css('background', 'rgb(' + r.getValue() + ',' + g.getValue() + ',' + b.getValue() + ')')
};

/*scroll to top*/

$(document).ready(function () {
    $(function () {
        $.scrollUp({
            scrollName: 'scrollUp', // Element ID
            scrollDistance: 300, // Distance from top/bottom before showing element (px)
            scrollFrom: 'top', // 'top' or 'bottom'
            scrollSpeed: 300, // Speed back to top (ms)
            easingType: 'linear', // Scroll to top easing (see http://easings.net/)
            animation: 'fade', // Fade, slide, none
            animationSpeed: 200, // Animation in speed (ms)
            scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
            //scrollTarget: false, // Set a custom target element for scrolling to the top
            scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
            scrollTitle: false, // Set a custom <a> title if required.
            scrollImg: false, // Set true to use image
            activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
            zIndex: 2147483647 // Z-Index for the overlay
        });
    });
    $("#form-validate").validate({
        rules: {
        shipping_email: {
        required: true,
        email: true
        },
        shipping_first_name: {
        required: true,
        },
        shipping_last_name: {
        required: true,
        },
        shipping_address: {
        required: true,
        },
        shipping_mobile_number: {
        required: true,
        digits: true,
        rangelength: [9,10]
        },
        shipping_city: {
        required: true,
        },
        customer_name:{
        required: true,
        },
        customer_email:{
        required: true,
        email: true
        },
        password:{
        required: true,
        minlength: 5,
        },
        confirm_password:{
        required: true,
        minlength: 5,
        equalTo: "#password"
        },
        mobile_number:{
        required: true,
        digits:true,
        rangelength: [9,10]
        },

        },

        messages: {
        shipping_email: {
        required: "Không được để trống",
        email: "Bạn chưa nhập đúng định dạng Email"
        },
        shipping_first_name: {
        required: "Không được để trống",
        },
        shipping_last_name: {
        required: "Không được để trống",
        },
        shipping_address: {
        required: "Không được để trống",
        },
        shipping_mobile_number: {
        required: "Không được để trống",
        digits: "Vui lòng nhập số.",
        rangelength:  "Nhập từ 9 đến 10 ký tự",
        },
        shipping_city: {
        required: "Không được để trống",
        },
        customer_name:{
        required: "Không được để trống",
        },
        customer_email:{
        required: "Không được để trống",
        email: "Bạn chưa nhập đúng định dạng Email"
        },
        password:{
        required: "Không được để trống",
        minlength:  jQuery.validator.format("Yêu cầu ít nhất {0} Ký tự!"),
        },
        confirm_password:{
        required: "Không được để trống",
        minlength:  jQuery.validator.format("Yêu cầu ít nhất {0} Ký tự!"),
        equalTo: "Làm ơn hãy nhập mật mã giống như ở trên"
        },
        mobile_number:{
        required: "Không được để trống",
        digits:"Vui lòng nhập số.",
        rangelength:  "Nhập từ 9 đến 10 ký tự",
        },
        }
        });
});
