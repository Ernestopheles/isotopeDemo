<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator__A7R9no_Contao_Fragment_Contao_FrontendModule_TemplateService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private '.service_locator..A7R9no.contao.fragment._contao.frontend_module.template' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return ($container->privates['.service_locator..A7R9no'] ?? $container->load('get_ServiceLocator__A7R9noService'))->withContext('contao.fragment._contao.frontend_module.template', $container);
    }
}
