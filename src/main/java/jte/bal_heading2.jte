@import gg.jte.Content
@import org.svenehrke.demo.bdscomponentsdemo.components.heading2.Heading2Props

@param Heading2Props props
@param Content content

<template x-if="level === 1">
    <h1 class="${Heading2Props.classes(1)}">${content}</h1>
</template>
<template x-if="level === 2">
    <h2 class="${Heading2Props.classes(2)}">${content}</h2>
</template>
<template x-if="level === 3">
    <h2 class="${Heading2Props.classes(3)}">${content}</h2>
</template>
<template x-if="level === 4">
    <h2 class="${Heading2Props.classes(4)}">${content}</h2>
</template>
<template x-if="level === 5">
    <h2 class="${Heading2Props.classes(5)}">${content}</h2>
</template>
