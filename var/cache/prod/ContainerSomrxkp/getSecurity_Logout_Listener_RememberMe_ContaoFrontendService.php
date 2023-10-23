<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecurity_Logout_Listener_RememberMe_ContaoFrontendService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'security.logout.listener.remember_me.contao_frontend' shared service.
     *
     * @return \Symfony\Component\Security\Http\EventListener\RememberMeLogoutListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/security-http/EventListener/RememberMeLogoutListener.php';

        return $container->privates['security.logout.listener.remember_me.contao_frontend'] = new \Symfony\Component\Security\Http\EventListener\RememberMeLogoutListener(($container->privates['security.authentication.rememberme.services.simplehash.contao_frontend.two_factor_decorator'] ?? $container->load('getSecurity_Authentication_Rememberme_Services_Simplehash_ContaoFrontend_TwoFactorDecoratorService')));
    }
}
