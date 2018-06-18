\name{eng_dotnet}
\alias{eng_dotnet}
\title{Dotnet Engine Knitr}
\usage{
```{r dotnet-ex, engine='dotnet', eval=TRUE, echo=TRUE}
var i = 1;
i++;
Console.WriteLine(i++);
Console.WriteLine(++i);
Console.WriteLine(i--);
Console.WriteLine(--i);
```
}
\description{
Add dotnet scripting to knitr R presentation.

Depends on dotnet and dotnet-script extension to be installed: https://github.com/filipw/dotnet-script :

choco install dotnet.script

or

dotnet tool install -g dotnet-script

}
\examples{
```{r dotnet-ex, engine='dotnet', eval=TRUE, echo=TRUE}
var i = 1;
i++;
Console.WriteLine(i++);
Console.WriteLine(++i);
Console.WriteLine(i--);
Console.WriteLine(--i);
```
}
