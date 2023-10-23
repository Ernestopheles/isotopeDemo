<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ContaoManager_Command_DebugPlugins_LazyService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private '.contao_manager.command.debug_plugins.lazy' shared service.
     *
     * @return \Symfony\Component\Console\Command\LazyCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/LazyCommand.php';

        return $container->privates['.contao_manager.command.debug_plugins.lazy'] = new \Symfony\Component\Console\Command\LazyCommand('debug:plugins', [], 'Displays the Contao Manager plugin configurations.', false, function () use ($container): \Contao\ManagerBundle\Command\DebugPluginsCommand {
            return ($container->privates['contao_manager.command.debug_plugins'] ?? $container->load('getContaoManager_Command_DebugPluginsService'));
        });
    }
}
