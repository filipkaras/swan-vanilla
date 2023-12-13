{extends file="index.tpl"}

{block name="container"}
    <section class="auth vh-100 gradient-custom">
        <div class="container py-5 h-100">
            {include file="inc/result.tpl"}
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white">
                        <div class="card-body p-5 text-center">
                            <div class="mb-md-5 mt-md-4 pb-5">
                                <img src="/assets/favicon/apple-touch-icon.51ba96d0e797.png" />
                                <h2 class="fw-bold mb-2 text-uppercase">Sign In</h2>
                                <p class="text-white-50 mb-4">Please enter your email and password!</p>
                                {$form}
                                <div class="social d-flex justify-content-center text-center mt-4 pt-1">
                                    <a target="_blank" href="http://www.facebook.com/SWANoperator" class="text-white px-4"><i class="fab fa-facebook-f fa-lg"></i></a>
                                    <a target="_blank" href="https://www.linkedin.com/company/swan-a-s-" class="text-white px-4"><i class="fab fa-linkedin fa-lg"></i></a>
                                    <a target="_blank" href="https://www.youtube.com/c/SWAN" class="text-white px-4"><i class="fab fa-youtube fa-lg"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
{/block}