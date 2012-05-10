sf-deploy-sites
===============

Deploy your SF org sites between orgs (w/o manually having to create them)

1. Create a dir in the root of your SF project name scripts (or whatever you want to name it, just update script paths).

2. Update the salesforce.properties.* files to refect the orgs in your environment. So if your dev org is named MyDevBox then name name the properties file salesforce.properties.MyDevBox. Update the contents of the file too (kind of important =)).

3. Update your .site files in your sites dir. Search for siteAdmin and remove the org specific nameappended tothe end of the site admins email and replace with [ENVNAME]. It should end up looking like this: <siteAdmin>fourq@gmail.com[ENVNAME]</siteAdmin>.

4. Deploy your sites. Run 'deploy.sh dev sites' (or deploy.bat). While deploying, ANT will replace the [ENVNAME] token with the name of the org your deploying to.  

4. Retrieve your dev org metadata by running retrieve.sh (or retrieve.bat if on windows). Check the .site files and it should again say [ENVNAME]. This is because ANT replaced your org name so that the next org you deploy to will have the correct name replace the token.