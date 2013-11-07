outdir=escala-bin
ccargs=-d ${outdir}

all: Test BeforeAfter

escala-bin:
	mkdir -p ${outdir}

Imperative: escala-bin src/main/escala/escala/Imperative.escala
	escalac ${ccargs} src/main/escala/escala/Imperative.escala

BeforeAfter: escala-bin src/main/escala/escala/BeforeAfter.escala src/main/escala/escala/Figure.escala
	escalac ${ccargs} src/main/escala/escala/BeforeAfter.escala src/main/escala/escala/Figure.escala

mrclean:
	rm -fr .sugarjcache
	rm -fr .cache
	rm -fr bin
