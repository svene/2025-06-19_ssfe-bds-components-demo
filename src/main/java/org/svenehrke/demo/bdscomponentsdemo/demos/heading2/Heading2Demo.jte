@import org.svenehrke.demo.bdscomponentsdemo.components.heading2.Heading2Props

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.14.9/dist/cdn.min.js" defer></script>
    <link rel="stylesheet" href="/jte-heading2-component.css" /> <%-- See note in css file--%>
</head>

<body x-data="{ c: false, wahr: true}">

@template.jte.menu()
<hr>
<%-- provide x-data scope without dom element (like ng-container): --%>
<template x-if="wahr" x-data="{v: 'bla'}">
    <div>
        <div x-text="v"></div>
        <%-- nesting works: --%>
        <template x-if="wahr" x-data="{vv: 'ddd'}">
            <div x-text="vv"></div>
        </template>
    </div>
</template>

<hr>
<p>Heading2 Component Demo</p>
<template x-if="wahr" x-data="{level: 1}">
    <div>
    <button x-on:click="level = 1">1 -> level</button>
    <button x-on:click="level = 2">2 -> level</button>
    <button x-on:click="level = 3">3 -> level</button>
    <button x-on:click="level = 4">4 -> level</button>
    <button x-on:click="level = 5">5 -> level</button>
    <button x-on:click="level = 0">0 -> level</button>
    @template.jte.bal_heading2(Heading2Props.make(0), content=@`
        SSFE H<span x-text="level">1</span>
    `)
    </div>
</template>

</body>
</html>
