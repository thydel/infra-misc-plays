# infra-misc-plays

- Basic setup was made using [init-play-dir.yml](init-play-dir.yml)

```bash
gist=https://gist.githubusercontent.com
user=thydel

file=ansible.mk
gistid=c5ba9cb9e4d3fb18d8452ca5ad9217df
curl -s $gist/$user/$gistid/raw > $file; chmod +x $file;
```

- Helper file [ansible.mk](ansible.mk) come from

```bash
file=init-play-dir.yml
gistid=f3cbc54b05ed5d6dbecb7e6f4c86a6cf
curl -s $gist/$user/$gistid/raw > $file; chmod +x $file;
```

- Run `ansible.mk help` to get hints on `ansible` (and `pass`) setup

- Choose the `data_version` to use in [infra-data.yml](infra-data.yml)

- Run `infra-data.yml` to populate `inventory`, `ssh-config` and `var/ext`

- Run `ansible-galaxy install -r requirements.yml` to get required *roles*

- Run `install-git-on-fronts.yml` as an exemple to simple task with
  pre and post `hg commit`
  
