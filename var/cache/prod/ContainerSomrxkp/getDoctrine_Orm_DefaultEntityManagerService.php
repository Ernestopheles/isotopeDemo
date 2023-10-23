<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getDoctrine_Orm_DefaultEntityManagerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'doctrine.orm.default_entity_manager' shared service.
     *
     * @return \Doctrine\ORM\EntityManager
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/common/src/Proxy/Autoloader.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Proxy/Autoloader.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/persistence/src/Persistence/ObjectManager.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/EntityManagerInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/EntityManager.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Configuration.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/Psr6/CacheAdapter.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/Cache.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/FlushableCache.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/ClearableCache.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/MultiGetCache.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/MultiDeleteCache.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/MultiPutCache.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/MultiOperationCache.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/cache/lib/Doctrine/Common/Cache/CacheProvider.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/cache/DoctrineProvider.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/persistence/src/Persistence/Mapping/Driver/MappingDriver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/doctrine-bundle/Mapping/MappingDriver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/persistence/src/Persistence/Mapping/Driver/MappingDriverChain.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/persistence/src/Persistence/Mapping/Driver/ColocatedMappingDriver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/persistence/src/Persistence/Mapping/Driver/AnnotationDriver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/Driver/CompatibilityAnnotationDriver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/Driver/ReflectionBasedDriver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/Driver/AnnotationDriver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/NamingStrategy.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/DefaultNamingStrategy.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/QuoteStrategy.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Internal/SQLResultCasing.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/DefaultQuoteStrategy.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Mapping/EntityListenerResolver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/doctrine-bundle/Mapping/EntityListenerServiceResolver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/doctrine-bundle/Mapping/ContainerEntityListenerResolver.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/orm/lib/Doctrine/ORM/Repository/RepositoryFactory.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/doctrine-bundle/Repository/ContainerRepositoryFactory.php';
        include_once \dirname(__DIR__, 4).'/vendor/doctrine/doctrine-bundle/ManagerConfigurator.php';

        $a = ($container->services['doctrine.dbal.default_connection'] ?? $container->getDoctrine_Dbal_DefaultConnectionService());

        if (isset($container->services['doctrine.orm.default_entity_manager'])) {
            return $container->services['doctrine.orm.default_entity_manager'];
        }
        $b = ($container->privates['doctrine.dbal.default_connection.event_manager'] ?? $container->getDoctrine_Dbal_DefaultConnection_EventManagerService());

        if (isset($container->services['doctrine.orm.default_entity_manager'])) {
            return $container->services['doctrine.orm.default_entity_manager'];
        }
        $c = new \Doctrine\ORM\Configuration();

        $d = \Doctrine\Common\Cache\Psr6\CacheAdapter::wrap(new \Symfony\Component\Cache\DoctrineProvider(($container->privates['doctrine.system_cache_pool'] ?? $container->load('getDoctrine_SystemCachePoolService'))));
        $e = new \Doctrine\Persistence\Mapping\Driver\MappingDriverChain();
        $e->addDriver(new \Doctrine\ORM\Mapping\Driver\AnnotationDriver(($container->privates['annotations.cached_reader'] ?? $container->load('getAnnotations_CachedReaderService')), [0 => (\dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Entity')], false), 'Contao\\CoreBundle\\Entity');

        $c->setEntityNamespaces(['ContaoCoreBundle' => 'Contao\\CoreBundle\\Entity']);
        $c->setMetadataCache($d);
        $c->setQueryCache($d);
        $c->setResultCache(\Doctrine\Common\Cache\Psr6\CacheAdapter::wrap(new \Symfony\Component\Cache\DoctrineProvider(($container->privates['doctrine.result_cache_pool'] ?? $container->load('getDoctrine_ResultCachePoolService')))));
        $c->setMetadataDriverImpl(new \Doctrine\Bundle\DoctrineBundle\Mapping\MappingDriver($e, new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService, [
            'doctrine.ulid_generator' => ['privates', 'doctrine.ulid_generator', 'getDoctrine_UlidGeneratorService', true],
            'doctrine.uuid_generator' => ['privates', 'doctrine.uuid_generator', 'getDoctrine_UuidGeneratorService', true],
        ], [
            'doctrine.ulid_generator' => '?',
            'doctrine.uuid_generator' => '?',
        ])));
        $c->setProxyDir(($container->targetDir.''.'/doctrine/orm/Proxies'));
        $c->setProxyNamespace('Proxies');
        $c->setAutoGenerateProxyClasses(false);
        $c->setSchemaIgnoreClasses([]);
        $c->setClassMetadataFactoryName('Doctrine\\Bundle\\DoctrineBundle\\Mapping\\ClassMetadataFactory');
        $c->setDefaultRepositoryClassName('Doctrine\\ORM\\EntityRepository');
        $c->setNamingStrategy(new \Doctrine\ORM\Mapping\DefaultNamingStrategy());
        $c->setQuoteStrategy(new \Doctrine\ORM\Mapping\DefaultQuoteStrategy());
        $c->setEntityListenerResolver(new \Doctrine\Bundle\DoctrineBundle\Mapping\ContainerEntityListenerResolver($container));
        $c->setLazyGhostObjectEnabled(false);
        $c->setRepositoryFactory(new \Doctrine\Bundle\DoctrineBundle\Repository\ContainerRepositoryFactory(new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService, [
            'contao.repository.cron_job' => ['privates', 'contao.repository.cron_job', 'getContao_Repository_CronJobService', true],
            'contao.repository.remember_me' => ['privates', 'contao.repository.remember_me', 'getContao_Repository_RememberMeService', true],
        ], [
            'contao.repository.cron_job' => '?',
            'contao.repository.remember_me' => '?',
        ])));

        $container->services['doctrine.orm.default_entity_manager'] = $instance = new \Doctrine\ORM\EntityManager($a, $c, $b);

        (new \Doctrine\Bundle\DoctrineBundle\ManagerConfigurator([], []))->configure($instance);

        return $instance;
    }
}
