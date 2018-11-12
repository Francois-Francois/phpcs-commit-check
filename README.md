# PHPCS git pre-commit hook 

## About

Auto installed git pre-commit hook for running [PHP Code Sniffer](https://github.com/squizlabs/PHP_CodeSniffer) code checking to PSR2 coding standard compliance. It checks only files that are to be committed. It also run php linter.

Only works on Unix OS.

## Installation

Install `rikless/phpcs-commit-check` with composer require command:

    composer require "rikless/phpcs-commit-check"

To enable code sniff, аdd to `post-install-cmd` and `post-update-cmd` in `composer.json` installation script:

    "scripts": {
        "post-install-cmd": [
            "PHPCodeChecker\\Installer::postInstall"
        ],
        "post-update-cmd": [
            "PHPCodeChecker\\Installer::postInstall"
        ]
    }

Then run `composer install` or `composer update`. `pre-commit` hook will be installed or updated if it already exists.

## Usage

Run `git commit` and pre-commit hook will check your committed files like if you run
   
    php -l -d display_errors=0 && phpcs --standard=PSR2 --colors --encoding=utf-8 -n -p /path/to/file.php
    
