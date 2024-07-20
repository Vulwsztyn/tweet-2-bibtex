# tweet-2-bibtex

## Usage

`ruby main.rb <tweet-url>`

e.g.

`ruby main.rb https://twitter.com/GretaThunberg/status/1608056944501178368` 

## Output

The output should end with valid bibtex citation e.g.:
```
@misc{author_year,
  author = {Greta Thunberg - @GretaThunberg},
  title = {yes, please do enlighten me. email me at smalldickenergy@getalife.com},
  year = {2022},
  month = {12},
  day = {28},
  howpublished = {\url{https://twitter.com/GretaThunberg/status/1608056944501178368}},
  note = {Accessed: 2024-07-20}
}
```


## Requirements

ruby and watir

---

![image](./meme.png)
