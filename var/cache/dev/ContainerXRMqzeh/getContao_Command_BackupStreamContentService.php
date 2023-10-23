<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Command_BackupStreamContentService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the private 'contao.command.backup_stream_content' shared service.
     *
     * @return \Contao\CoreBundle\Command\Backup\BackupStreamContentCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Command/Backup/BackupStreamContentCommand.php';

        $container->privates['contao.command.backup_stream_content'] = $instance = new \Contao\CoreBundle\Command\Backup\BackupStreamContentCommand(($container->privates['contao.doctrine.backup_manager'] ?? $container->load('getContao_Doctrine_BackupManagerService')));

        $instance->setName('contao:backup:stream-content');

        return $instance;
    }
}
