<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContaoInstallation_Command_UnlockService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the private 'contao_installation.command.unlock' shared service.
     *
     * @return \Contao\InstallationBundle\Command\UnlockCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/installation-bundle/src/Command/UnlockCommand.php';

        $container->privates['contao_installation.command.unlock'] = $instance = new \Contao\InstallationBundle\Command\UnlockCommand((\dirname(__DIR__, 3).'/install_lock'));

        $instance->setName('contao:install:unlock');
        $instance->setDescription('Unlocks the install tool.');

        return $instance;
    }
}
