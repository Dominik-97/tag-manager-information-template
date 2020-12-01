Pro kompilaci je třeba spustit v terminálu následující příkaz:

```bash
pandoc --metadata-file=metadata.yaml --template=template-setup.tex --listings -H listings-setup.tex --wrap=preserve -f markdown-implicit_figures+hard_line_breaks+escaped_line_breaks -o zadani.pdf Zadani.md
```

Pro flag -o lze dále použít
- docx
- html

### TO DO:
1. Doplnit info ak uz maju bhv script, ze ho treba nahradit a ak maju gtm tak to dat vedla neho
2. To vyplnenie moze byt vysvetlene jak je uplne dole, ale klientom, ktorym robime marketing by sme to mali posielat uz vyplnene
3. A tu konvenciu si kludne interne standardizujme
4. Za mna event formSub, category “contactForm” action - nejake form-id napr podla nazvu
5. A poslat im ten paq_push uz vyplneny
