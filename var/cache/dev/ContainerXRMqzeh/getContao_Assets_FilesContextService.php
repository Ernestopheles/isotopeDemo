<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Assets_FilesContextService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the public 'contao.assets.files_context' shared service.
     *
     * @return \Contao\CoreBundle\Asset\ContaoContext
     */
    public static function do($container, $lazyLoad = true)
    {
        $a = ($container->services['contao.framework'] ?? $container->getContao_FrameworkService());

        if (isset($container->services['contao.assets.files_context'])) {
            return $container->services['contao.assets.files_context'];
        }

        return $container->services['contao.assets.files_context'] = new \Contao\CoreBundle\Asset\ContaoContext(($container->services['request_stack'] ?? ($container->services['request_stack'] = new \Symfony\Component\HttpFoundation\RequestStack())), $a, 'staticFiles', true);
    }
}
