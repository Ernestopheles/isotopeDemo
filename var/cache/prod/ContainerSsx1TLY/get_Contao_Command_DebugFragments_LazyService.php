<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_Contao_Command_DebugFragments_LazyService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private '.contao.command.debug_fragments.lazy' shared service.
     *
     * @return \Symfony\Component\Console\Command\LazyCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/LazyCommand.php';

        return $container->privates['.contao.command.debug_fragments.lazy'] = new \Symfony\Component\Console\Command\LazyCommand('debug:fragments', [], 'Displays the fragment controller configuration.', false, function () use ($container): \Contao\CoreBundle\Command\DebugFragmentsCommand {
            return ($container->privates['contao.command.debug_fragments'] ?? $container->load('getContao_Command_DebugFragmentsService'));
        });
    }
}
