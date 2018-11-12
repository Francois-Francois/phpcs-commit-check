<?php

namespace PHPCodeChecker;

class Installer
{
    public static function postInstall()
    {
        system('sh vendor/rikless/phpcs-commit-check/src/setup.sh');
    }
}
