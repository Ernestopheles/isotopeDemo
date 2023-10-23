<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecurity_Authentication_SwitchuserListener_ContaoBackendService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'security.authentication.switchuser_listener.contao_backend' shared service.
     *
     * @return \Symfony\Component\Security\Http\Firewall\SwitchUserListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/FirewallListenerInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/AbstractListener.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/Firewall/SwitchUserListener.php';

        $a = ($container->privates['contao.security.backend_user_provider'] ?? $container->load('getContao_Security_BackendUserProviderService'));

        if (isset($container->privates['security.authentication.switchuser_listener.contao_backend'])) {
            return $container->privates['security.authentication.switchuser_listener.contao_backend'];
        }
        $b = ($container->privates['contao.security.user_checker'] ?? $container->load('getContao_Security_UserCheckerService'));

        if (isset($container->privates['security.authentication.switchuser_listener.contao_backend'])) {
            return $container->privates['security.authentication.switchuser_listener.contao_backend'];
        }
        $c = ($container->privates['contao.security.access_decision_manager'] ?? $container->getContao_Security_AccessDecisionManagerService());

        if (isset($container->privates['security.authentication.switchuser_listener.contao_backend'])) {
            return $container->privates['security.authentication.switchuser_listener.contao_backend'];
        }
        $d = ($container->services['event_dispatcher'] ?? $container->getEventDispatcherService());

        if (isset($container->privates['security.authentication.switchuser_listener.contao_backend'])) {
            return $container->privates['security.authentication.switchuser_listener.contao_backend'];
        }

        return $container->privates['security.authentication.switchuser_listener.contao_backend'] = new \Symfony\Component\Security\Http\Firewall\SwitchUserListener(($container->services['.container.private.security.token_storage'] ?? $container->get_Container_Private_Security_TokenStorageService()), $a, $b, 'contao_backend', $c, ($container->privates['monolog.logger.security'] ?? $container->load('getMonolog_Logger_SecurityService')), '_switch_user', 'ROLE_ALLOWED_TO_SWITCH', $d, false);
    }
}
