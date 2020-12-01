Pro možnost využívat Behavee Tag Manager, je třeba vložit do HTML kódu stránky následující script:

```html
<!-- Behavee Tag Manager -->
<script type="text/javascript">
var _mtm = window._mtm = window._mtm || [];
_mtm.push({'mtm.startTime': (new Date().getTime()), 'event': 'mtm.Start'});
var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
g.type='text/javascript'; g.async=true; g.src='https://analytics.behavee.com/js/{{container_id}}.js'; s.parentNode.insertBefore(g,s);
</script>
<!-- End Behavee Tag Manager -->
```

Tento kód je třeba vložit co nejvýše v `<head>` tagu vaší stránky.

Pokud již v `<head>` tagu vaší stránky máte vložený trackovací kód Behavee, který jste vkládali při registraci popřípadě, který byl vložen prostřednictvím instalace přes platformy Shoptet, nebo Shopify je třeba ho nahradit výše uvedeným scriptem.

Původně vložený script se standardně nachází mezi prvním `<!-- Behavee Analytics -->` a druhým `<!-- Behavee Analytics -->` HTML komentem na vaší stránce.

V případě, že máte rovněž vložení script **Google Tag Manageru**, přidejte tento script souběžně s původním scriptem od Google.