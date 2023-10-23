<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContaoInstallation_Database_InstallerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the public 'contao_installation.database.installer' shared service.
     *
     * @return \Contao\InstallationBundle\Database\Installer
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/installation-bundle/src/Database/Installer.php';

        return $container->services['contao_installation.database.installer'] = new \Contao\InstallationBundle\Database\Installer(($container->services['doctrine.dbal.default_connection'] ?? $container->getDoctrine_Dbal_DefaultConnectionService()), ($container->privates['contao.doctrine.schema_provider'] ?? $container->load('getContao_Doctrine_SchemaProviderService')));
    }
}
