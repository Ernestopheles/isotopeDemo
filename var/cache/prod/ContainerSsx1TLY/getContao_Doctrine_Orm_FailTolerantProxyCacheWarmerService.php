<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Doctrine_Orm_FailTolerantProxyCacheWarmerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'contao.doctrine.orm.fail_tolerant_proxy_cache_warmer' shared service.
     *
     * @return \Contao\CoreBundle\Doctrine\ORM\FailTolerantProxyCacheWarmer
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Doctrine/ORM/FailTolerantProxyCacheWarmer.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/doctrine-bridge/CacheWarmer/ProxyCacheWarmer.php';

        return $container->privates['contao.doctrine.orm.fail_tolerant_proxy_cache_warmer'] = new \Contao\CoreBundle\Doctrine\ORM\FailTolerantProxyCacheWarmer(new \Symfony\Bridge\Doctrine\CacheWarmer\ProxyCacheWarmer(($container->services['doctrine'] ?? $container->load('getDoctrineService'))), ($container->services['doctrine.dbal.default_connection'] ?? $container->getDoctrine_Dbal_DefaultConnectionService()));
    }
}
