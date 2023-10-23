<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContaoManager_Command_SetupService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'contao_manager.command.setup' shared service.
     *
     * @return \Contao\ManagerBundle\Command\ContaoSetupCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/manager-bundle/src/Command/ContaoSetupCommand.php';

        $container->privates['contao_manager.command.setup'] = $instance = new \Contao\ManagerBundle\Command\ContaoSetupCommand(\dirname(__DIR__, 4), (\dirname(__DIR__, 4).'/public'), $container->getEnv('APP_SECRET'));

        $instance->setName('contao:setup');
        $instance->setDescription('Sets up a Contao Managed Edition. This command will be run when executing the "contao-setup" binary.');

        return $instance;
    }
}
