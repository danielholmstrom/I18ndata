# Contains XML tables related to I18n.

## Contents

* ISO-639-1
* ISO-639-2
* ISO-3166-1
* ISO-4271

## Why

I cannot find any good and free tables of ISO-standards, and others.

## How

Currently the data is taken from Wikipedia. All generated xml data is in data/.

## Getting new versions from Wikipedia

There are xslt-scripts in tools/, do a

    > make fetch

to get new xml-files generated from wikipedia. The new versions will be put in tmp/.

## A note about language codes

Anywhere the attribute 'language' is used, for example in country names it will be the iso-639-1 alpha2 code.

## Errors

Currently it is just a plain rip of the Wikipedia pages, so it will probably contain errors, escpecially in the extra fields, like currency locations.

Feel free to send pull-requests for invalid data.

## TODO

Extend the data with for example currency signs, names for cents, translations of language names/country names.
