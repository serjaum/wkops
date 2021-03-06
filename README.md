# wkops - Which kops?

wkops is a [kops](https://github.com/kubernetes/kops) version manager

if you manage multiple clusters with different versions of kops, wkops will help you with that

## Installation

### Local

1. Clone this repo

```
git clone git@github.com:serjaum/wkops.git
```

2. Run the install script

```
chmod +x ./install.sh && ./install.sh
```

3. Add the wkops root folder to your $PATH or add the line below to your ~/.bashrc, ~/.profile, or ~/.zshrc file to have it automatically sourced upon login: 

```
export PATH=~/.wkops:\$PATH
```

### Remote

1. Run in your terminal

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/serjaum/wkops/master/install.sh)"
```

2. Add the wkops root folder to your $PATH

```
export PATH=~/.wkops:\$PATH
```

## Usage

### Installing a specific kops version


```
wkops install 1.18.0
```

### Listing all versions installed

```
wkops list
```

output

```
~: wkops list

Kops versions

1.17.0
1.17.1
1.18.0
```
### Listing all versions available from kops repo

```
wkops list --remote
```

output

```
~: wkops list --remote

Listing kops versions from repository
v1.18.1
v1.17.2
v1.19.0-alpha.3
.
.
.
```

### To use a version

```
wkops use 1.18.0
```

output:

```
~: wkops use 1.18.0

Creating a link to kops 1.18.0

You are using kops Version 1.18.0 (git-698bf974d8)
```

### Auto detection

```
wkops detect
```

output:

```
~: wkops detect
kops version: 1.17.1
Do you want to install kops 1.17.1? [y/N] y
/home/pipefy/.wkops/bin/kops1.17.1              100%[==========>]  92,79M  7,18MB/s    in 10s     
You are using kops Version 1.17.1 (git-4dfd4779fe)
```

### To delete a version

```
wkops delete 1.18.0
```

## Troubleshooting

  * I change the version in wkops but the kops version does not change.
  
    There is probably a conflict in your $path, remove all other versions of kops in the other folders like /usr/local/bin etc.    

## Contributing
Pull requests are welcome. Feel free to contribute
