<!doctype html>
<html lang="en">
<head>
    <title>SWAN - Vanilla version</title>
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/favicon/apple-touch-icon.51ba96d0e797.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon/favicon-32x32.fac4f0bb0b36.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/favicon/favicon-16x16.dadb828914ce.png">
    <link rel="mask-icon" href="/assets/favicon/safari-pinned-tab.684b359f3956.svg" color="#5bbad5">
    <link rel="shortcut icon" href="/assets/favicon/favicon.de43b17b57a3.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link href="//use.fontawesome.com/releases/v5.3.1/css/all.css" rel="stylesheet" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Bootstrap -->
    <link href="//cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
    <!-- Custom styles -->
    <link rel="stylesheet" href="/assets/css/app.css">
</head>
<body>
{block name="container"}
<div class="container">
    {include file="inc/result.tpl"}
    {block name="body"}{/block}
</div>
{/block}
<!-- jQuery -->
<script src="//code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<!-- Bootstrap -->
<script src="//cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<!-- DataTables -->
<script src="//cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<!-- Nette Forms -->
<script src="/vendor/nette/forms/src/assets/netteForms.min.js"></script>
{block name="script"}{/block}
</body>
</html>