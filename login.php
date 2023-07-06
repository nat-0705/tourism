<style>
    #uni_modal .modal-content>.modal-footer,
    #uni_modal .modal-content>.modal-header {
        display: none;
    }
</style>
<div class="container">
    <h3 class="float-left">
        <button type="button" id="modal-1" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">
            &times;
        </button>
    </h3>
    <div class="row">
        <div class="col">
            <h3 class="text-center">Login</h3>
            <hr>
            <form action="" id="login-form">
                <div class="form-group">
                    <label for="" class="control-label">Username</label>
                    <input type="text" class="form-control form" name="username" required>
                </div>
                <div class="form-group">
                    <label for="" class="control-label">Password</label>
                    <input type="password" class="form-control form" name="password" required>
                </div>
                <div class="form-group d-flex justify-content-end">
                    <button class="btn btn-primary">Login</button>
                </div>
            </form>
            <div class="modal-footer d-flex justify-content-center">
                <div class="signup-section">Not a member yet? <a class="text-info" href="javascript:void(0)" id="registerLink">Register</a>.</div>
            </div>
        </div>
    </div>
</div>



<script>
    $(function() {
        $('#registerLink').click(function(){
            uni_modal("","register.php","medium")
        })
        $('#login-form').submit(function(e) {
            e.preventDefault();
            start_loader()
            if ($('.err-msg').length > 0)
                $('.err-msg').remove();
            $.ajax({
                url: _base_url_ + "classes/Login.php?f=login_user",
                method: "POST",
                data: $(this).serialize(),
                dataType: "json",
                error: err => {
                    console.log(err)
                    alert_toast("an error occured", 'error')
                    end_loader()
                },
                success: function(resp) {
                    if (typeof resp == 'object' && resp.status == 'success') {
                        alert_toast("Login Successfully", 'success')
                        setTimeout(function() {
                            location.reload()
                        }, 2000)
                    } else if (resp.status == 'incorrect') {
                        var _err_el = $('<div>')
                        _err_el.addClass("alert alert-danger err-msg").text("Incorrect Credentials.")
                        $('#login-form').prepend(_err_el)
                        end_loader()

                    } else {
                        console.log(resp)
                        alert_toast("an error occured", 'error')
                        end_loader()
                    }
                }
            })
        })
    })
</script>