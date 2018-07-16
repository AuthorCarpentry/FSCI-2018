
```{r orcid-bio, echo= FALSE}
library ('rorcid')
library('httpuv')

token <- orcid_auth(scope = "/authenticate", reauth = FALSE, redirect_uri = getOption("rorcid.redirect_uri"))

res <- orcid_bio(orcid = "0000-0001-5494-4806")
bio <- res$'0000-0001-5494-4806'$'content'


```

`r bio`
