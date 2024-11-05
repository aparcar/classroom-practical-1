# Practical: SSH, Git, Grep, Sed, Awk

This is a basic intro to super useful tools that you will use all the time.
You likely already know them anyway, but here is a quick refresher.

* `ssh` - Secure Shell to connect to remote servers
* `git` - Version control system for collaborative coding
* `grep` - Search for patterns in text
* `sed` - Stream editor for text, i.e. find and replace
* `awk` - Text processing language, i.e. extract columns from text

## 1. `ssh` & `git` #1

Clonse this repository to your local machine. You'll need a GitHub account for
that, it's super handy anyway to show your future employers how great of a
coder you are!

https://github.com/signup

Now you need to generate an SSH key and add it to your GitHub account. Follow
the instructions here:

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Now you can clone this repository to your local machine:

```bash
git clone <your repository url>
```

Excellent, you finished the first task!

## 2. `grep` & `awk`

You want a script to check on the HS Nordhausen PHP version. Imagine you want a
convinient way to check if the PHP version is up to date. You can use `grep` and
`awk` to extract the PHP version from the website headers.

In `php-version.sh` you see a script that uses `curl` to get the headers of the
HS Nordhausen website. Sadly both `grep` and `awk` are used with the wrong
parameters! Please fix the script so that it extracts the PHP version from the
headers, the output should be something like `7.4.3`.

Run the script with the following command:

```bash
bash php-version.sh
```

Save the fixed script under the same name.

## 3. `sed`

This one is super easy, create a script using `sed` to replace `<NAME>` with
the first argument passed to the script. Write the commend into a file called
`sed.sh`. The script should be able to replace `<NAME>` with any string passed.
The replaced text should be written to a file passed as the second argument.

Run the script with the following command:

```bash
bash sed.sh "John Doe" "output.txt"
```

## 4. `git` #2

Now that you have made changes to the repository, you can push them back to
GitHub. First you need to add the changes to the staging area, then commit them
with a message and finally push them to the remote repository.

Below are the commands to do that:

```bash
git add php-version.sh
git add sed.sh
git commit -m "Fixed php-version.sh and added sed.sh"
git push
```

Excellent, you finished everything! Great job!
