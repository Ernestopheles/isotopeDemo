<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecurity_Firewall_Map_Context_ContaoBackendService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'security.firewall.map.context.contao_backend' shared service.
     *
     * @return \Symfony\Bundle\SecurityBundle\Security\FirewallContext
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-bundle/Security/FirewallContext.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/ExceptionListener.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/FirewallListenerInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/AbstractListener.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/LogoutListener.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-bundle/Security/FirewallConfig.php';

        $a = ($container->privates['contao.security.authentication_entry_point'] ?? $container->load('getContao_Security_AuthenticationEntryPointService'));

        if (isset($container->privates['security.firewall.map.context.contao_backend'])) {
            return $container->privates['security.firewall.map.context.contao_backend'];
        }
        $b = ($container->privates['security.event_dispatcher.contao_backend'] ?? $container->load('getSecurity_EventDispatcher_ContaoBackendService'));

        if (isset($container->privates['security.firewall.map.context.contao_backend'])) {
            return $container->privates['security.firewall.map.context.contao_backend'];
        }
        $c = ($container->services['.container.private.security.token_storage'] ?? $container->get_Container_Private_Security_TokenStorageService());
        $d = ($container->privates['security.http_utils'] ?? $container->load('getSecurity_HttpUtilsService'));

        return $container->privates['security.firewall.map.context.contao_backend'] = new \Symfony\Bundle\SecurityBundle\Security\FirewallContext(new RewindableGenerator(function () use ($container) {
            yield 0 => ($container->privates['security.channel_listener'] ?? $container->load('getSecurity_ChannelListenerService'));
            yield 1 => ($container->privates['security.context_listener.0'] ?? $container->load('getSecurity_ContextListener_0Service'));
            yield 2 => ($container->privates['contao.security.login_authentication_listener.contao_backend'] ?? $container->load('getContao_Security_LoginAuthenticationListener_ContaoBackendService'));
            yield 3 => ($container->privates['security.authentication.listener.anonymous.contao_backend'] ?? $container->load('getSecurity_Authentication_Listener_Anonymous_ContaoBackendService'));
            yield 4 => ($container->privates['security.authentication.switchuser_listener.contao_backend'] ?? $container->load('getSecurity_Authentication_SwitchuserListener_ContaoBackendService'));
            yield 5 => ($container->privates['security.access_listener'] ?? $container->load('getSecurity_AccessListenerService'));
        }, 6), new \Symfony\Component\Security\Http\Firewall\ExceptionListener($c, ($container->services['security.authentication.trust_resolver'] ?? $container->getSecurity_Authentication_TrustResolverService()), $d, 'contao_backend', $a, NULL, NULL, ($container->privates['monolog.logger.security'] ?? $container->load('getMonolog_Logger_SecurityService')), false), new \Symfony\Component\Security\Http\Firewall\LogoutListener($c, $d, $b, ['csrf_parameter' => '_csrf_token', 'csrf_token_id' => 'logout', 'logout_path' => 'contao_backend_logout']), new \Symfony\Bundle\SecurityBundle\Security\FirewallConfig('contao_backend', 'contao.security.user_checker', 'contao.routing.backend_matcher', true, false, 'contao.security.backend_user_provider', 'contao_backend', 'contao.security.authentication_entry_point', NULL, NULL, [0 => 'switch_user', 1 => 'contao_login', 2 => 'anonymous'], ['parameter' => '_switch_user', 'role' => 'ROLE_ALLOWED_TO_SWITCH']));
    }
}
