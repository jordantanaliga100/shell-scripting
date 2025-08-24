###### Commands

```bash
wget https://example.com
wget https://www.gnu.org/licenses/gpl-3.0.txt
```

\_ Flags of wget command

> -O file → save sa specific filename
> -c → continue download kung naputol (resume)
> -i file.txt → mag-download ng list of URLs mula sa file
> -r → recursive download (kasama subdirectories)
> --no-parent → huwag umakyat sa parent directory (limit lang sa target)
> --mirror → parang shortcut ng: -r -N -l inf --no-remove-listing (perfect for website mirroring)
> --page-requisites → kasama yung CSS, JS, images na kailangan ng page
> --convert-links → i-update yung links para gumana locally
> --adjust-extension → gawing .html kung HTML page talaga
