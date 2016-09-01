# Plantminer
Match lists of taxa against the Brazilian Flora 2020 and The Plant List.

## Online version
http://www.plantminer.com

## Run a local version
```coffee
install.packages("devtools")
devtools::install_github("gustavobio/tpldata")
devtools::install_github("gustavobio/tpl")
devtools::install_github("gustavobio/flora")
install.packages("shiny")
install.packages("DT")
install.packages("shinydashboard")
library("shiny")
download.file("https://raw.githubusercontent.com/gustavobio/plantminer/master/app.R", paste0(tempdir(), "app.R"))
runApp(paste0(tempdir(), "app.R"), launch.browser = TRUE)
```
## API

### Flora API call
Use the /flora method to GET request a taxon using the `taxon` querystring:

http://www.plantminer.com/flora?taxon=Coffea%20arabica
The response is always a json object, even if there is no match.

#### Fields

#####id
Taxon id in the Brazilian Flora Checklist.

#####scientific name
Full name with authors

#####original search
Character string supplied by the user and matched against the database.

#####search str
Character string used internally to query the database. If the user entered a misspelled name and a suggestion could be made, this will not match the original search.

#####taxon status
Taxonomical status. Possible values are as follows:
accepted
synonym

#####notes
Notes about a taxon. Empty string if there is nothing to report. Otherwise, possible values are as follows:

`not found`, if a name was not found.
`was misspelled`, if a name was misspelled.
`replaced synonym`, if a name was a synonym and was replaced by an accepted name.
`check no accepted name` if a synonym is not linked to a accepted name.
`check no accepted +1 synonyms` if a supplied taxon matches several names listed as synonyms and none are linked to an accepted name.
`check +1 accepted` if a synonym is linked to two or more accepted names.
`check +1 entries` if a supplied taxon matches several entries in the database.
`check undefined status` if a name is neither accepted or a synonym according to the data.
Multiple notes are separated with a `|`

#####taxon rank
Taxonomical rank of the user supplied taxon. Possible values are:

`family`
`genus`
`species`

#####family
Taxon family according to the Brazilian Flora Checklist

#####threat status
Taxon threat status according to CNC Flora 2013. Statuses follow the IUCN convention.

### TPL API call
Use the /tpl method to GET request a taxon using the `taxon` querystring:

http://www.plantminer.com/tpl?taxon=Coffea%20arabica
The response is always a json object, even if a match couldn't be made.

#### Fields
#####id
Taxon id in The Plant List

#####family
Taxon family according to The Plant List. There is an option to return APG families instead.

#####genus
Taxon genus

#####species
Specific epiteth

#####infraspecific rank
Taxon infraspecific rank

#####infraspecific epithet
Taxon infraspecific epithet

#####authorship
Taxon author(s)

#####taxonomic status in tpl
Taxon status according to The Plant List. Possible values are:

`Accepted`
`Synonym`

#####confidence level
Status confidence level. Possible values are:
`H`: high confidence
`M`: medium confidence
`L`: low confidence

#####source
Source of the data. Please check their website for a list of all possible sources and how to cite them.

#####accepted id
id of the accepted name of a taxon in The Plant List. Return only if the user chooses not to automatically replace synonyms.

#####name
Taxon name without authors.

#####note
Notes about the taxon matching. Possible values are:

`not found`, if a name was not found.
`was misspelled`, if a name was misspelled.
`replaced synonym`, if a name is listed as a synonym and an accepted name was found.
Multiple notes are separated with a `|`

#####original search
The user supplied character string.
