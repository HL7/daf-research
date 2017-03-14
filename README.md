
#  Welcome to the DAF Research Implemenation Guide Repository

Authors: Dragon,  Eric Haas, Brett Marquard


-----


GitHub will automatically trigger a new build whenever you commit changes.
(To manually trigger a build, just `POST` to the Webhook URL yourself, for example via:
`curl -X POST "https://2rxzc1u4ji.execute-api.us-east-1.amazonaws.com/prod/publish?Healthedata1/daf-research"`)


### Find your rendered IG automatically available at

http://build.fhir.org/ig/Healthedata1/daf-research

### Find debugging info about the build

http://build.fhir.org/ig/Healthedata1/daf-research/debug.tgz

------

## Setup instructions

You will also need to add the following directories to the same path:

- `temp`
- `output`
- `qa`

There is a python file that will create the ig.json and ig.xnl file based on the content in the `resources` and `example` directories.  See the inline comments for how to use.  The bash scripts to run the ig publisher with or without the python script.  


form Mac OS you can build the IG using the bash scripts using:

`>bash publish.sh`

To automatically build the ig.xml IG resource and ig.json definition file when adding or removing FHIR artifacts use:

`>bash publish2.sh`  which first runs the python script "daf-research.py" before the ig publisher.

The files shown below form the layout for all the FHIR artifacts are shown below:


1. **template files:**

![template files](template%20files.png)

2. **page files:**

![page files](page20files.png)

3. **markdown files:**

![markdown pages](markdown20pages.png)

4. **html file content:**

![html file content](html20files.png)





