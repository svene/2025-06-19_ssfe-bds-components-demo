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

<p>Component PoC 01</p>
<h3></h3>
<div x-data="{ fontsize: '20px'}">
    @template.jte.cmppoc01(new CmpPoc01Props())
    <button x-on:click="fontsize = '10px'">10</button>
    <button x-on:click="fontsize = '20px'">20</button>
</div>

<div x-data="{ fontsize: '10px'}">
    @template.jte.cmppoc01(new CmpPoc01Props())
    <button x-on:click="fontsize = '10px'">10</button>
    <button x-on:click="fontsize = '20px'">20</button>
</div>

</body>
</html>
