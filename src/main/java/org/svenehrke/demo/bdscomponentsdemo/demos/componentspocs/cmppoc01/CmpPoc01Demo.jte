@import org.svenehrke.demo.bdscomponentsdemo.components.cmppoc01.CmpPoc01Props

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.14.9/dist/cdn.min.js" defer></script>
</head>

<body>

@template.jte.menu()
<hr>

<p>Mini-Component:</p>
<h3></h3>
@template.jte.cmppoc01(new CmpPoc01Props("20px"))

@template.jte.cmppoc01(new CmpPoc01Props("10px"))

</body>
</html>
