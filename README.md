DorkNet is a tool that utilizes the GitHub Search API and an extract list of GitHub dorks that I've compiled from various sources to provide an overview of sensitive information stored on github given a search query.

The Primary purpose of DorkNet is to provide the user with a clean and tailored attack surface to begin harvesting sensitive information on GitHub. 

DorkNet find interesting repos or users discovered from DorkNet to produce best results.


Requirements

** Python3

** GitHub Personal Access Token

** Install requirements inside of the requirements.txt file of this repo (pip3 install -r requirements.txt)


Recommendations

It is recommended to provide DorkNet with at least two GitHub personal access tokens so that it may alternate between the two during the dorking process and reduce the likelihood of being rate limited. Using multiple tokens from separate GitHub accounts will provide the best results.


Dorks

Within the dorks folder are a list of dorks. It is recommended to use the "alldorks.txt" file when mapping out your github secrets attack surface. The "alldorks.txt" is my collection of dorks that i've pulled from various resources.


Docker

## Build Command
docker build -t dorknet .

## Basic Run Command
docker run -it dorknet

## Run Command
docker run -it -v $(pwd)/tf:/tf dorknet -tf tf/TOKENSFILE -q exapmle.com -d dorks/DORKFILE -o tesla

## Run Command
docker run -it -v $(pwd)/tf:/tf w3security/dorknet -tf tf/TOKENSFILE -q exapmle.com -d dorks/DORKFILE -o tesla

Example of the results

Below is an example of the results from running the query "tesla.com" with a small list of dorks.

The following command was run to query for "tesla.com" against a list of dorks:

python3 DorkNet.py -tf TOKENSFILE -q exapmle.com -d Dorks/DORKFILE -o tesla
