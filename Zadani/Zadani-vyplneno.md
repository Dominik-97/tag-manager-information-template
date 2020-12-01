Aby bylo možné v Behavee zatrackovat odeslání formuláře a označit ho jako splnění nastaveného goalu, je třeba vložit do HTML kódu stránky následující:

**1:**

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

**2:**

Pro každý formulář, který je třeba trackovat je nutné vytvořit event, který je spuštěn s odesláním daného formuláře.

Standardní způsob jak je možné tento event vytvořit je buď:
1. HTML onEvent atribut,
2. event listener, který naslouchá odeslání daného formuláře.

Vybraný způsob pak musí obsahovat níže uvedený kód, který pushne data, které jsme schopní zatrackovat v Behavee do data-layeru.

```javascript
_paq.push(['trackEvent', '{{Category}}', '{{Action}}', '{{Name}}', {{Value}}]);
```

**Vysvětlení**

Obsah výše zmíněného kódu:

- Event Category: Vámi zvolená kategorie (může být například *Ecommerce*) - **povinné**
    - Standard: *'contactForm'*
    - Pro Vás: **'{{Category}}'**
- Event Action: Rovněž vámi zvolená akce (může být například *Form_1*) - **povinné**
    - Standard: *'formId'*
    - Pro Vás: **'{{Action}}'**
- Event Name: Jakékoliv jméno (může být například *Smartphone*) - **nepovinné**
    - Pro Vás: **'{{Name}}'**
- Event Value: Případná hodnota, například 1000 - **nepovinné**
    - Pro Vás: **{{Value}}**

Ve smyslu editace kódu stránky je toto vše, co je potřebné.