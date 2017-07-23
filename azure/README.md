Source for template files: https://github.com/Azure/azure-quickstart-templates/tree/master/docker-simple-on-ubuntu

# Setting parameters

You will need to define deployment parameters before deploying. They are:

  * `newStorageAccountName`
  * `adminUsername`
  * `adminPassword`
  * `dnsNameForPublicIP`

You can inspire yourself from the [azuredeploy.parameters.json.example](azuredeploy.parameters.json.example) file.

For best results, generate random values for `newStorageAccountName` and `dnsNameForPublicIP`.

Note that using username/password for SSH is unsafe in prod and should be
limited to SSH keys.

# Previous solutions

I attempted to use a CustomScript to build the image on the AzureVM but the
CustomScript extension seems to work rather poorly on ubuntu VMs. Instead, I
used the DockerExtension with an image published on the repository.

Using the repository was clunky and felt a bit like cheating, but with each
deployment attempt taking 15-45 minutes I had to take shortcuts.
