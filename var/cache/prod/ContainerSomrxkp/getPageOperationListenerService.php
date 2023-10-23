<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getPageOperationListenerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'Terminal42\ChangeLanguage\EventListener\DataContainer\PageOperationListener' shared autowired service.
     *
     * @return \Terminal42\ChangeLanguage\EventListener\DataContainer\PageOperationListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/terminal42/contao-changelanguage/src/EventListener/DataContainer/PageOperationListener.php';

        return $container->services['Terminal42\\ChangeLanguage\\EventListener\\DataContainer\\PageOperationListener'] = new \Terminal42\ChangeLanguage\EventListener\DataContainer\PageOperationListener(($container->services['doctrine.dbal.default_connection'] ?? $container->getDoctrine_Dbal_DefaultConnectionService()));
    }
}
