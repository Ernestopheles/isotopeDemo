<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getDeleteThemeListenerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'Terminal42\EasyThemesBundle\EventListener\DeleteThemeListener' shared autowired service.
     *
     * @return \Terminal42\EasyThemesBundle\EventListener\DeleteThemeListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/terminal42/contao-easy_themes/src/EventListener/DeleteThemeListener.php';

        return $container->services['Terminal42\\EasyThemesBundle\\EventListener\\DeleteThemeListener'] = new \Terminal42\EasyThemesBundle\EventListener\DeleteThemeListener(($container->services['doctrine.dbal.default_connection'] ?? $container->getDoctrine_Dbal_DefaultConnectionService()));
    }
}
