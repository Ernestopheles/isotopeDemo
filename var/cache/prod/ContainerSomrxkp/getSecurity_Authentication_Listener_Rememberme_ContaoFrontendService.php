<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecurity_Authentication_Listener_Rememberme_ContaoFrontendService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'security.authentication.listener.rememberme.contao_frontend' shared service.
     *
     * @return \Symfony\Component\Security\Http\Firewall\RememberMeListener
     *
     * @deprecated Since symfony/security-bundle 5.3: The "security.authentication.listener.rememberme.contao_frontend" service is deprecated, use the new authenticator system instead.
     */
    public static function do($container, $lazyLoad = true)
    {
        trigger_deprecation('symfony/security-bundle', '5.3', 'The "security.authentication.listener.rememberme.contao_frontend" service is deprecated, use the new authenticator system instead.');

        $a = ($container->privates['security.authentication.manager'] ?? $container->load('getSecurity_Authentication_ManagerService'));

        if (isset($container->privates['security.authentication.listener.rememberme.contao_frontend'])) {
            return $container->privates['security.authentication.listener.rememberme.contao_frontend'];
        }
        $b = ($container->services['event_dispatcher'] ?? $container->getEventDispatcherService());

        if (isset($container->privates['security.authentication.listener.rememberme.contao_frontend'])) {
            return $container->privates['security.authentication.listener.rememberme.contao_frontend'];
        }

        return $container->privates['security.authentication.listener.rememberme.contao_frontend'] = new \Symfony\Component\Security\Http\Firewall\RememberMeListener(($container->privates['security.untracked_token_storage'] ?? ($container->privates['security.untracked_token_storage'] = new \Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorage())), ($container->privates['security.authentication.rememberme.services.simplehash.contao_frontend.two_factor_decorator'] ?? $container->load('getSecurity_Authentication_Rememberme_Services_Simplehash_ContaoFrontend_TwoFactorDecoratorService')), $a, ($container->privates['monolog.logger.security'] ?? $container->load('getMonolog_Logger_SecurityService')), $b, true, ($container->privates['security.authentication.session_strategy'] ?? $container->load('getSecurity_Authentication_SessionStrategyService')));
    }
}
