# Contributing to ADLAS

We would love for you to contribute to ADLAS and help make it even better than it is
today! As a contributor, here are the guidelines we would like you to follow:

 - [Code of Conduct]
 - [Question or Problem?]
 - [Issues and Bugs]
 - [Submission Guidelines]
 - [Coding Rules]
 - [Commit Message Guidelines]

## Code of Conduct
Help us keep ADLAS open and inclusive. Please read our [Code of Conduct][coc].

## Got a Question or Problem?

If you would like to chat about the question in real-time, you can reach out via [our gitter channel][gitter].

## Found a Problem?
If you find a bug in the source code, requirements incorrect or design issues, 
you can raise an issue against the files and correct labels.

## Wanted features?
You can mention a new feature by submitting an issue to the GitHub
Repository. If you would like a new feature, please submit an issue with
a proposal for your work first, to be sure that we can use it.
Please consider what kind of change it is in terms of project lifecycle stage.


## Submission Guidelines

### Submitting an Issue

Before you submit an issue, please search the issue tracker, maybe an issue for your problem already exists and the discussion might inform you of workarounds readily available.

We want to fix all the issues as soon as possible, but before fixing a bug we need to reproduce and confirm it.

- Branch of ADLAS used


### Submitting a Pull Request (PR)
Before you submit your Pull Request (PR) consider the following guidelines:

1. Search [GitHub](https://github.com/Rubber-Duck-999/ADLAS_Ada_System/issues) for an open or closed PR
  that relates to your submission. You don't want to duplicate effort.
1. Fork the ADLAS/ADLAS repo.
1. Make your changes in a new git branch:

     git checkout -b my-fix-branch master

1. Commit your changes using a descriptive commit message that follows our
  [commit message conventions](#commit). Adherence to these conventions
  is necessary because release notes are automatically generated from these messages.

     git commit -a
	 
    Note: the optional commit `-a` command line option will automatically "add" and "rm" edited files.

1. Push your branch to GitHub:

    git push origin my-fix-branch

1. In GitHub, send a pull request to `ADLAS:master`.
* If we suggest changes then:
  * Make the required updates.
  * Rebase your branch and force push to your GitHub repository (this will update your Pull Request):

    git rebase master -i
    git push -f


That's it! Thank you for your contribution!

#### After your pull request is merged

After your pull request is merged, you can safely delete your branch and pull the changes
from the main (upstream) repository:

* Delete the remote branch on GitHub either through the GitHub web UI or your local shell as follows:

    ```shell
    git push origin --delete my-fix-branch
    ```

* Check out the master branch:

    ```shell
    git checkout master -f
    ```

* Delete the local branch:

    ```shell
    git branch -D my-fix-branch
    ```

* Update your master with the latest upstream version:

    ```shell
    git pull --ff upstream master
    ```

## Coding Rules
To ensure consistency throughout the source code, stick to the coding standards.



