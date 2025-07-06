@import org.svenehrke.demo.bdscomponentsdemo.components.cmppoc01.CmpPoc01Props

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.14.9/dist/cdn.min.js" defer></script>
</head>

<body x-data> <%-- NOTE: 'x-data' is needed for custom event handling to work (as in htmx's "from: body" syntax  --%>

@template.jte.menu()
<hr>

<p>Component PoC 01</p>
<h3></h3>
<div style="display: flex; gap: 10px; margin-bottom: 20px; border-style: groove; max-width: fit-content;" x-data="{ fontsize: '20px'}">
    <button x-on:click="fontsize = '10px'">10</button>
    <button x-on:click="fontsize = '20px'">20</button>
    @template.jte.cmppoc01(new CmpPoc01Props(), content = @`
        Instance 1`)
</div>

<div style="display: flex; gap: 10px; border-style: groove; max-width: fit-content;" x-data="{ fontsize: '10px'}">
    <button x-on:click="fontsize = '10px'">10</button>
    <button x-on:click="fontsize = '20px'">20</button>
    @template.jte.cmppoc01(new CmpPoc01Props(), content = @`
        Instance 2`)
</div>

<div style="display: flex; gap: 10px; border-style: groove; max-width: fit-content;" x-data="{ fontsize: '10px'}">
    <div x-on:instance3-fontsize.window="fontsize = $event.detail.fs"></div>
    @template.jte.cmppoc01(new CmpPoc01Props(), content = @`
        Instance 3
    `)
</div>

<div style="display: flex; margin-top: 10px; align-items: center; gap: 10px; ">
<p>Control font size for instance 3 (note that buttons are outside of instance 3's scope):</p>
<button @click="$dispatch('instance3-fontsize', {'fs': '10px'})">10px</button>
<button @click="$dispatch('instance3-fontsize', {'fs': '20px'})">20px</button>
</div>
</body>
</html>
