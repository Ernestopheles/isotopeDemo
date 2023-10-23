<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ContaoInstallation_Command_Unlock_LazyService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private '.contao_installation.command.unlock.lazy' shared service.
     *
     * @return \Symfony\Component\Console\Command\LazyCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/LazyCommand.php';

        return $container->privates['.contao_installation.command.unlock.lazy'] = new \Symfony\Component\Console\Command\LazyCommand('contao:install:unlock', [], 'Unlocks the install tool.', false, function () use ($container): \Contao\InstallationBundle\Command\UnlockCommand {
            return ($container->privates['contao_installation.command.unlock'] ?? $container->load('getContaoInstallation_Command_UnlockService'));
        });
    }
}
