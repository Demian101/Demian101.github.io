I built a minimal demo for you to have a try ~  

- https://demian101.github.io/en/
- https://github.com/Demian101/Demian101.github.io

you can just:
```bash
git clone https://github.com/Demian101/Demian101.github.io
cd Demian101.github.io
MDBOOK_BOOK__LANGUAGE=en mdbook serve -d book/en
```

In this demo, the `en.po` file and `message.pot` are almost empty. 
but the render of the formula when generating `./en` folder failed.

<img width="826" alt="image" src="https://github.com/google/mdbook-i18n-helpers/assets/33189338/80ed46bc-9946-4f8d-a41f-d5023aa2b16d">

so I think there is s.th. happened when gettext processing the raw .md ... 

Or you can provide the source code of gettext, and I will try to fix it. What exactly happened when `MDBOOK_BOOK__LANGUAGE=en mdbook serve -d book/en`

#### How to debug:
you can just try to comment the `after = ["gettext"]` in book.toml to see what happened .
