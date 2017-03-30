Param(
  [Parameter(Mandatory=$True,Position=1)]
  [string]$name,
  [string]$version
)

docker build --no-cache -t $name .

if ($version) { docker tag $name $name':'$version }
