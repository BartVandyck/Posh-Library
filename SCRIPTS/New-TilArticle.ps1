## Quick and dirty script to act as a template for a new HUGO post
## History:
## - 2021-04-07: creation date


param (
    [Parameter(Mandatory)] [String]$title,
    [string]$Author='Bart Vandyck'

)


$CurrentDate=(get-date).tostring("yyyy-mm-dd")
$CurrentTime=(get-date).tostring("HH:mm:ss")

$publishdate=$Currentdate + "T" + $CurrentTime

$filename="Testbestand.md"

new-item $filename
Set-Content $filename "---"
add-content $filename "title: $title"
add-content $filename "date: $publishdate"
add-content $filename "lastmod:"
Add-Content $filename "draft: true"
add-content $filename "tags: [ ]"
add-content $filename "categories: [ ]"
add-content $filename "---"