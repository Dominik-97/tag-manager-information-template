Pro kompilaci je třeba spustit v terminálu následující příkaz:

```bash
pandoc --metadata-file=metadata.yaml --template=template-setup.tex --listings -H listings-setup.tex --wrap=preserve -f markdown-implicit_figures+hard_line_breaks+escaped_line_breaks -o zadani.pdf Zadani.md
```

Pokud nechcete editovat jednotlivé markdown fily, tak stačí spustit create_zadani.sh pomocí příkazu `./create_zadani.sh`, shell script jen požádá o jednotlivé inputy a pak vše vygeneruje sám v podobě souboru s názvem **zadani.pdf**.

Input file (poslední hodnota v příkazu, výše jako `Zadani.md`) je možné použít následující hodnoty podle účelu zadání:
- Zadani.md (Obecné)
- Zadání-vyplneno.md (Customizované pro každého klienta)
- Zadani-bez-eventu.md (Customizované pro každého klienta, bez popsání vytvoření custom eventu)

Pro flag -o lze dále použít
- docx
- html

### TO DO:
- [x] Doplnit info ak uz maju bhv script, ze ho treba nahradit a ak maju gtm tak to dat vedla neho
- [x] To vyplnenie moze byt vysvetlene jak je uplne dole, ale klientom, ktorym robime marketing by sme to mali posielat uz vyplnene
> Vyřešeno 3 verzema:
1. Zadani.md
2. Zadani-vyplneno.md
3. Zadani-bez-eventu.md
- [ ] A tu konvenciu si kludne interne standardizujme
- [x] Za mna event formSub, category “contactForm” action - nejake form-id napr podla nazvu
- [x] A poslat im ten paq_push uz vyplneny
> Viz bod 2.
