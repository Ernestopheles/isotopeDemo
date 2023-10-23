<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getNelmioSecurity_UaParser_UaPhpService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'nelmio_security.ua_parser.ua_php' shared service.
     *
     * @return \Nelmio\SecurityBundle\UserAgent\UAFamilyParser\UAFamilyParser
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/nelmio/security-bundle/UserAgent/UAFamilyParser/UAFamilyParserInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/nelmio/security-bundle/UserAgent/UAFamilyParser/UAFamilyParser.php';

        return $container->services['nelmio_security.ua_parser.ua_php'] = new \Nelmio\SecurityBundle\UserAgent\UAFamilyParser\UAFamilyParser(($container->privates['nelmio_security.ua_parser.ua_php.provider'] ?? $container->load('getNelmioSecurity_UaParser_UaPhp_ProviderService')));
    }
}
