<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Security_LoginAuthenticationListener_ContaoFrontendService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'contao.security.login_authentication_listener.contao_frontend' shared service.
     *
     * @return \Contao\CoreBundle\Security\Authentication\ContaoLoginAuthenticationListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/FirewallListenerInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/AbstractListener.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/AbstractAuthenticationListener.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Security/Authentication/ContaoLoginAuthenticationListener.php';

        $a = ($container->privates['security.authentication.manager'] ?? $container->load('getSecurity_Authentication_ManagerService'));

        if (isset($container->privates['contao.security.login_authentication_listener.contao_frontend'])) {
            return $container->privates['contao.security.login_authentication_listener.contao_frontend'];
        }
        $b = ($container->privates['contao.security.authentication_success_handler'] ?? $container->load('getContao_Security_AuthenticationSuccessHandlerService'));

        if (isset($container->privates['contao.security.login_authentication_listener.contao_frontend'])) {
            return $container->privates['contao.security.login_authentication_listener.contao_frontend'];
        }
        $c = ($container->services['event_dispatcher'] ?? $container->getEventDispatcherService());

        if (isset($container->privates['contao.security.login_authentication_listener.contao_frontend'])) {
            return $container->privates['contao.security.login_authentication_listener.contao_frontend'];
        }

        $container->privates['contao.security.login_authentication_listener.contao_frontend'] = $instance = new \Contao\CoreBundle\Security\Authentication\ContaoLoginAuthenticationListener(($container->services['.container.private.security.token_storage'] ?? $container->get_Container_Private_Security_TokenStorageService()), $a, ($container->privates['security.authentication.session_strategy'] ?? $container->load('getSecurity_Authentication_SessionStrategyService')), ($container->privates['security.http_utils'] ?? $container->load('getSecurity_HttpUtilsService')), 'contao_frontend', $b, ($container->privates['contao.security.authentication_failure_handler'] ?? $container->load('getContao_Security_AuthenticationFailureHandlerService')), ['require_previous_session' => false], ($container->privates['monolog.logger.security'] ?? $container->load('getMonolog_Logger_SecurityService')), $c);

        $instance->setRememberMeServices(($container->privates['security.authentication.rememberme.services.simplehash.contao_frontend.two_factor_decorator'] ?? $container->load('getSecurity_Authentication_Rememberme_Services_Simplehash_ContaoFrontend_TwoFactorDecoratorService')));

        return $instance;
    }
}
