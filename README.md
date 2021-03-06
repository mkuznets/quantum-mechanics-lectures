# Конспект лекций по квантовой механике

Оформленный в LaTeX конспект годового курса лекций по квантовой механике, прочитанного [Леонидом Павловичем Сухановым](http://wikimipt.org/wiki/%D0%A1%D1%83%D1%85%D0%B0%D0%BD%D0%BE%D0%B2_%D0%9B%D0%B5%D0%BE%D0%BD%D0%B8%D0%B4_%D0%9F%D0%B0%D0%B2%D0%BB%D0%BE%D0%B2%D0%B8%D1%87) на Факультете радиотехники и кибернетики МФТИ в 2012–13 годах.

:book: [Последняя редакция конспекта](https://github.com/mkuznets/quantum-mechanics-lectures/releases/latest) (PDF)

## Статус

Полностью оцифрована оригинальная рукопись Леонида Павловича! Дальше предстоит вычитка, приведение к единому стилю, предпечатная подготовка и т.п.

## Как помочь проекту

Мы надеемся, что студенты, у которых читает Л.П. Суханов, проявят заинтересованность в улучшении этого конспекта. Мнения, замечания, исправления и т.п. можно отправлять через pull-реквесты или в [issues](https://github.com/mkuznets/quantum-mechanics-lectures/issues).

## Сборка

`$ make book` (или просто `make`) — сборка всего конспекта

`$ make chapter CH=N` — сборка только одной главы с номером `N`

`$ make clean` — удаление файлов, оставшихся после сборки (кроме `*.pdf`)

`$ make distclean` — удаление всех файлов, оставшихся после сборки

Подробнее о сборке написано в [BUILD.md](BUILD.md).

## История проекта
**5 января 2012** [Андрей Гущин](https://vk.com/andrey.guschin) (на тот момент — студент 4-го курса ФРТК 811-й группы) за 5 дней до экзамена по квантмеху [опубликовал](https://vk.com/wall14545009_2152) на личной странице Вконтакте призыв к «гуру теорфиза», не уточнив, однако, суть «предложения». На самом деле за это небольшое время Андрей и ряд его однокурсников смогли набрать конспект практически всего курса в wiki-формате. Оцифрованный конспект хостился на личном сервере [Дениса Анисимова](https://vk.com/geniusa).

**февраль 2012:** [Максим Кузнецов](https://github.com/mkuznets) (на тот момент — студент 3-го курса ФРТК 916-й группы, у которого только начались лекции по квантмеху) начал работу по улучшению и дополнению конспекта. Довольно быстро стало понятно, что wiki-формат для подобных целей подходит плохо, поэтому было принято решение использовать LaTeX. Для набора конспекта использовались как собственные записи, так и уже набранный wiki-конспект (от которого позже отказались из-за сложности преобразования в новый формат и самодостаточности собственных лекций).

К сожалению, к **январю 2013**, когда группы 91x сдавали экзамен по квантмеху, закончить работу над конспектом не удалось. Также не удалось найти преемников, поэтому работа над конспектом долгое время не велась.

**октябрь 2013:** Максим продолжает работу над конспектом, планируя самостоятельно закончить работу над лекциями 1-го семестра.

**22 ноября 2013** создан Git-репозиторий с исходниками конспекта.

**5 сентября 2014** работу над проектом продолжает [Лена Лимонова](mailto:limonovaee@frtk.ru).

К экзамену по квантмеху **10 января 2015** Лена, Стас Круглик и другие студенты 4-го курса ФРТК дописали недостающие главы и внесли много исправлений в имеющиеся.

**11 сентября 2015** Леонид Павлович любезно согласился предоставить собственную рукопись содержания лекций для исправления и дополнения конспекта. 




## Отказ от ответственности
Данный конспект лекций был создан студентами-энтузиастами, которые не являются специалистами по квантовой механике. В связи с этим **точность и адекватность формул и выкладок, иллюстраций и текста не гарантируется**. Мы постараемся приложить все усилия для минимизации этих недостатков, однако каждому, кто пользуется этим конспектом, следует помнить, что он **не является истиной в последней инстанции**, поэтому в случае сомнений необходимо консультироваться с литературой, преподавателем или однокурсниками. Коллектив проекта с упрёком (и сочувствием) смотрит на злобные негодования по поводу того, что преподаватель не признал правильной какую-либо формулу из данного конспекта.
