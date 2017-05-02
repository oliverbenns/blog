# Sen

![Sen waving](image.gif)

Inspired by the simplicity of John Carmack's [.plan files](https://github.com/oliverbenns/john-carmack-plan). [Sen](https://github.com/oliverbenns/sen) aims to create a minimalist blog for developers all within a Git repo. It prevents the need to worry about updates, style, management and longevity so they can focus purely on what's important: the message.

## Getting Started

1. First steps require you to have the bash scripts and correct structure. You can do this a few ways:
  - Fork this repo (would be cool to reference back to here!)
  - Clone this repo
  - Copy + paste files

2. Change the `EDIT_CMD` variable to be the command you use to open your editor. `atom` / `vi` / `emacs` etc.

## Publishing
There are 3 commands available to you. You can run these with `sh sen.sh [command]`.

#### create
This creates the post file with today's date.

#### publish
This will push your new or edited file to your remote branch with a neat message.

#### edit
Started a post but forgot to publish? Maybe you published but have noticed some typos? This task allows you to edit the post. Remember to run the publish task again once you've made your updates.

## Contributing
This project would love contributions! I have not yet tested this on Linux or Windows Bash - it would be cool if this could be multi-platform.

In terms of adding features, I'm trying to keep this as simple as possible. The items below are off the top of my head. Might be worth having a conversation over them first:

- Allow for custom date as 2nd parameter.
  - This will allow backtracking
  - `date` command in bash acts differently in Linux + OSX.
- Possibility of title in file name.
  - Slug? e.g. `1970-01-01-hello-world`
  - Title? e.g. `1970-01-01 Hello World`
  - What about format? Is there a nice convention? e.g. `1970-01-01 - Hello World`
- Ability to add images and save them within repo.
  - In `./media` folder?
