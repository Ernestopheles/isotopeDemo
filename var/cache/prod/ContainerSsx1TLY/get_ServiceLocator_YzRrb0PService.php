<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_YzRrb0PService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private '.service_locator.YzRrb0P' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.YzRrb0P'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService, [
            'model' => ['privates', '.errored..service_locator.YzRrb0P.Contao\\ModuleModel', NULL, 'Cannot autowire service ".service_locator.YzRrb0P": it references class "Contao\\ModuleModel" but no such service exists.'],
        ], [
            'model' => 'Contao\\ModuleModel',
        ]);
    }
}
