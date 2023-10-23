<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getUserNavigationListenerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the public 'Terminal42\EasyThemesBundle\EventListener\UserNavigationListener' shared autowired service.
     *
     * @return \Terminal42\EasyThemesBundle\EventListener\UserNavigationListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/terminal42/contao-easy_themes/src/EventListener/UserNavigationListener.php';

        return $container->services['Terminal42\\EasyThemesBundle\\EventListener\\UserNavigationListener'] = new \Terminal42\EasyThemesBundle\EventListener\UserNavigationListener(($container->privates['Terminal42\\EasyThemesBundle\\Helper'] ?? $container->load('getHelperService')));
    }
}
