<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Security_AuthenticationSuccessHandlerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the private 'contao.security.authentication_success_handler' shared service.
     *
     * @return \Contao\CoreBundle\Security\Authentication\AuthenticationSuccessHandler
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Authentication/AuthenticationSuccessHandlerInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Security/Authentication/AuthenticationSuccessHandler.php';

        $a = ($container->services['contao.framework'] ?? $container->getContao_FrameworkService());

        if (isset($container->privates['contao.security.authentication_success_handler'])) {
            return $container->privates['contao.security.authentication_success_handler'];
        }
        $b = ($container->services['security.firewall.map'] ?? $container->getSecurity_Firewall_MapService());

        if (isset($container->privates['contao.security.authentication_success_handler'])) {
            return $container->privates['contao.security.authentication_success_handler'];
        }

        return $container->privates['contao.security.authentication_success_handler'] = new \Contao\CoreBundle\Security\Authentication\AuthenticationSuccessHandler($a, ($container->services['contao.security.two_factor.trusted_device_manager'] ?? $container->load('getContao_Security_TwoFactor_TrustedDeviceManagerService')), $b, ($container->privates['monolog.logger'] ?? $container->getMonolog_LoggerService()));
    }
}
