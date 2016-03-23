# Сборка

Конспект рекомендуется собирать с помощью `make`. В Makefile используется утилита `latexmk`, которая автоматически рекомпилирует документ для отображения оглавления и ссылок, а также подключает библиографию. Основные команды:

`$ make book` (или просто `make`) — сборка всего конспекта

`$ make chapter CH=N` — сборка только одной главы с номером `N`

`$ make clean` — удаление файлов, оставшихся после сборки (кроме `*.pdf`)

`$ make distclean` — удаление всех файлов, оставшихся после сборки

Также можно использовать `pdflatex` напрямую, запустив его несколько раз

`pdflatex main.tex`

Далее приведены пакеты требуемые для сборки.

## Debian/Ubuntu и производные / TeXLive

```
$ sudo apt-get install texlive-latex-base texlive-latex-recommended \
  texlive-latex-extra cm-super-minimal texlive-lang-cyrillic \
  texlive-fonts-recommended texlive-fonts-extra latexmk \
  texlive-generic-recommended latex-xcolor pgf make
```

Пакеты, вместе с зависимыми и рекомендованными, займут на диске ~ 2 Гб. Опция `--no-install-recommends` сокращает этот объём в 2 раза, но при этом устанавливается лишь необходимый минимум для сборки конспекта, этого может быть недостаточно, если вы собираетесь писать на LaTeX что-то ещё.

## Windows / TeXLive

Полной установки TeX Live для сборки достаточно («Спасибо, Капитан Очевидность!»)

## Mac OS / MiKTeX 