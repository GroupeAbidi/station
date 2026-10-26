# Article catalog replacement

`replace-catalog-from-articles-uniques.sql` replaces the test business data and product catalog with the 1,465 designations from `ARTICLES_UNIQUES_UN_CODEBAR.pdf`.

It keeps Station user accounts. It removes test purchases, receptions, sales, cash sessions, stock movements, audit events, suppliers, and existing products.

Each imported product starts with these values so staff can complete them later in the Station interface:

- category: `Divers`
- stock and alert threshold: `0`
- purchase and sale prices: `0`
- unit and purchase unit: `PCE`
- one purchase unit equals one stock piece

The companion `replace-catalog-from-articles-uniques-review.csv` documents 45 source issues: duplicate designations, duplicate barcodes, or non-barcode text in the PDF. Those products are still imported; unavailable or duplicate barcodes are left blank because Station requires every stored barcode to be unique.

## Run on winserver

Stop Station first with `Ctrl+C` in the PowerShell window running `node server/index.js`.

From `C:\Station\station`, update the files and run the replacement using the PostgreSQL URL from `.env`:

```powershell
git pull origin main
$databaseUrl = ((Get-Content C:\Station\station\.env | Where-Object { $_ -like 'DATABASE_URL=*' }) -replace '^DATABASE_URL="?','' -replace '"$','')
$psqlUrl = $databaseUrl -replace '\?schema=public$',''
& "C:\Program Files\PostgreSQL\18\bin\psql.exe" --dbname="$psqlUrl" -v ON_ERROR_STOP=1 -f "C:\Station\station\database\imports\replace-catalog-from-articles-uniques.sql"
node server/index.js
```

Open `http://100.116.168.16:4000` and refresh the page with `Ctrl+F5`.
